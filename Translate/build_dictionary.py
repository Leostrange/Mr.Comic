#!/usr/bin/env python3
from __future__ import annotations

import argparse
import gzip
import io
import json
import re
import shutil
import sqlite3
import sys
import tarfile
import unicodedata
import urllib.parse
import urllib.request
import xml.etree.ElementTree as ET
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable, Iterator, Optional

APP_LANGS = {"en", "ja", "zh", "ru", "ko"}
CJK_LANGS = {"ja", "zh", "ko"}
XML_LANG = "{http://www.w3.org/XML/1998/namespace}lang"
USER_AGENT = "OfflineReaderDictionaryBuilder/1.0"
DEFAULT_URLS = {
    "wordnet": "https://wordnetcode.princeton.edu/3.0/WordNet-3.0.tar.gz",
    "jmdict": "http://ftp.edrdg.org/pub/Nihongo/JMdict.gz",
    "cedict": "https://cc-cedict.org/editor/editor_export_cedict.php?c=gz",
    "kaikki_ru": "https://kaikki.org/ruwiktionary/raw-wiktextract-data.jsonl.gz",
    "kaikki_ko": "https://kaikki.org/kowiktionary/raw-wiktextract-data.jsonl.gz",
}


@dataclass
class EntryPayload:
    lang: str
    lemma: str
    pos: Optional[str]
    source: str
    readings: list[tuple[str, str]]
    senses: list[str]
    translations: list[tuple[str, str]]
    forms: list[str]
    examples: list[tuple[str, Optional[str]]]


class DictionaryDB:
    def __init__(self, path: Path):
        self.path = path
        path.parent.mkdir(parents=True, exist_ok=True)
        self.conn = sqlite3.connect(path)
        self.conn.execute("PRAGMA journal_mode=WAL")
        self.conn.execute("PRAGMA synchronous=NORMAL")
        self.conn.execute("PRAGMA foreign_keys=ON")
        self._create_schema()

    def _create_schema(self) -> None:
        cur = self.conn.cursor()
        cur.executescript(
            """
            CREATE TABLE IF NOT EXISTS entries (
              id INTEGER PRIMARY KEY,
              lang TEXT NOT NULL,
              lemma TEXT NOT NULL,
              normalized_lemma TEXT NOT NULL,
              pos TEXT,
              source TEXT NOT NULL
            );

            CREATE UNIQUE INDEX IF NOT EXISTS idx_entries_unique
              ON entries(lang, normalized_lemma, IFNULL(pos, ''), source);

            CREATE TABLE IF NOT EXISTS forms (
              id INTEGER PRIMARY KEY,
              lang TEXT NOT NULL,
              form TEXT NOT NULL,
              normalized_form TEXT NOT NULL,
              entry_id INTEGER NOT NULL REFERENCES entries(id) ON DELETE CASCADE
            );

            CREATE INDEX IF NOT EXISTS idx_forms_lang_norm
              ON forms(lang, normalized_form);

            CREATE TABLE IF NOT EXISTS senses (
              id INTEGER PRIMARY KEY,
              entry_id INTEGER NOT NULL REFERENCES entries(id) ON DELETE CASCADE,
              ord INTEGER NOT NULL,
              gloss TEXT NOT NULL
            );

            CREATE TABLE IF NOT EXISTS translations (
              id INTEGER PRIMARY KEY,
              entry_id INTEGER NOT NULL REFERENCES entries(id) ON DELETE CASCADE,
              target_lang TEXT NOT NULL,
              text TEXT NOT NULL,
              ord INTEGER NOT NULL
            );

            CREATE TABLE IF NOT EXISTS readings (
              id INTEGER PRIMARY KEY,
              entry_id INTEGER NOT NULL REFERENCES entries(id) ON DELETE CASCADE,
              script TEXT NOT NULL,
              text TEXT NOT NULL
            );

            CREATE TABLE IF NOT EXISTS examples (
              id INTEGER PRIMARY KEY,
              entry_id INTEGER NOT NULL REFERENCES entries(id) ON DELETE CASCADE,
              text TEXT NOT NULL,
              translation TEXT
            );
            """
        )
        self.conn.commit()

    def insert_entry(self, payload: EntryPayload) -> None:
        lemma = (payload.lemma or "").strip()
        if not lemma:
            return
        normalized_lemma = normalize_text(lemma, payload.lang)
        cur = self.conn.cursor()
        cur.execute(
            """
            INSERT OR IGNORE INTO entries(lang, lemma, normalized_lemma, pos, source)
            VALUES (?, ?, ?, ?, ?)
            """,
            (payload.lang, lemma, normalized_lemma, payload.pos, payload.source),
        )
        cur.execute(
            """
            SELECT id FROM entries
            WHERE lang = ? AND normalized_lemma = ?
              AND IFNULL(pos, '') = IFNULL(?, '')
              AND source = ?
            """,
            (payload.lang, normalized_lemma, payload.pos, payload.source),
        )
        row = cur.fetchone()
        if row is None:
            raise RuntimeError(f"Failed to fetch entry id for {payload.lang}:{payload.lemma}")
        entry_id = int(row[0])

        cur.executemany(
            "INSERT INTO forms(lang, form, normalized_form, entry_id) VALUES (?, ?, ?, ?)",
            [
                (payload.lang, form, normalize_text(form, payload.lang), entry_id)
                for form in dedupe_keep_order([lemma, *payload.forms])
                if isinstance(form, str) and form.strip()
            ],
        )
        cur.executemany(
            "INSERT INTO readings(script, text, entry_id) VALUES (?, ?, ?)",
            [
                (script, text, entry_id)
                for script, text in dedupe_keep_order(payload.readings)
                if isinstance(text, str) and text.strip()
            ],
        )
        cur.executemany(
            "INSERT INTO senses(entry_id, ord, gloss) VALUES (?, ?, ?)",
            [
                (entry_id, i, gloss)
                for i, gloss in enumerate(dedupe_keep_order(payload.senses), start=1)
                if isinstance(gloss, str) and gloss.strip()
            ],
        )
        cur.executemany(
            "INSERT INTO translations(entry_id, target_lang, text, ord) VALUES (?, ?, ?, ?)",
            [
                (entry_id, target_lang, text, i)
                for i, (target_lang, text) in enumerate(dedupe_keep_order(payload.translations), start=1)
                if isinstance(text, str) and text.strip()
            ],
        )
        cur.executemany(
            "INSERT INTO examples(entry_id, text, translation) VALUES (?, ?, ?)",
            [
                (entry_id, text, translation)
                for text, translation in dedupe_keep_order(payload.examples)
                if isinstance(text, str) and text.strip()
            ],
        )

    def optimize(self) -> None:
        self.conn.commit()
        self.conn.execute("ANALYZE")
        self.conn.execute("VACUUM")
        self.conn.commit()

    def stats(self) -> dict[str, int]:
        out: dict[str, int] = {}
        cur = self.conn.cursor()
        for table in ["entries", "forms", "senses", "translations", "readings", "examples"]:
            cur.execute(f"SELECT COUNT(*) FROM {table}")
            out[table] = int(cur.fetchone()[0])
        return out

    def close(self) -> None:
        self.conn.commit()
        self.conn.close()


class DBRouter:
    def __init__(self, out_path: Path, split: bool):
        self.out_path = out_path
        self.split = split
        self._dbs: dict[str, DictionaryDB] = {}
        if split:
            out_path.mkdir(parents=True, exist_ok=True)
        else:
            out_path.parent.mkdir(parents=True, exist_ok=True)
            self._dbs["__combined__"] = DictionaryDB(out_path)

    def _get_db(self, lang: str) -> DictionaryDB:
        if not self.split:
            return self._dbs["__combined__"]
        if lang not in self._dbs:
            self._dbs[lang] = DictionaryDB(self.out_path / f"dict-{lang}.db")
        return self._dbs[lang]

    def insert(self, payload: EntryPayload) -> None:
        self._get_db(payload.lang).insert_entry(payload)

    def optimize(self) -> dict[str, dict[str, int]]:
        stats: dict[str, dict[str, int]] = {}
        for key, db in self._dbs.items():
            db.optimize()
            name = db.path.name if self.split else str(db.path)
            stats[name] = db.stats()
        return stats

    def close(self) -> None:
        for db in self._dbs.values():
            db.close()


def log(msg: str) -> None:
    print(msg, file=sys.stderr)


def dedupe_keep_order(items: Iterable) -> list:
    seen = set()
    out = []
    for item in items:
        if isinstance(item, (list, tuple, dict)):
            key = json.dumps(item, ensure_ascii=False, sort_keys=True)
        else:
            key = item
        if key in seen:
            continue
        seen.add(key)
        out.append(item)
    return out


def normalize_text(text: str, lang: str) -> str:
    text = unicodedata.normalize("NFKC", text).replace("_", " ").strip()
    text = re.sub(r"\s+", " ", text)
    if lang not in CJK_LANGS:
        text = text.casefold()
    return text


def trim_text(text: str, max_len: int = 260) -> str:
    text = re.sub(r"\s+", " ", text or "").strip()
    if len(text) <= max_len:
        return text
    return text[: max_len - 1].rstrip() + "…"


def clean_gloss(text: str, max_len: int = 220) -> str:
    text = re.sub(r"\s+", " ", text or "").strip(" ;,/-")
    return trim_text(text, max_len)


def open_text_auto(path: Path):
    if str(path).endswith(".gz"):
        return gzip.open(path, "rt", encoding="utf-8")
    return open(path, "r", encoding="utf-8")


def normalize_lang_code(value: Optional[str]) -> Optional[str]:
    if value is None:
        return None
    raw = str(value).strip().lower().replace("_", "-")
    if not raw:
        return None
    mapping = {
        "eng": "en",
        "english": "en",
        "en": "en",
        "rus": "ru",
        "russian": "ru",
        "ru": "ru",
        "jpn": "ja",
        "japanese": "ja",
        "ja": "ja",
        "kor": "ko",
        "korean": "ko",
        "ko": "ko",
        "zho": "zh",
        "chi": "zh",
        "cmn": "zh",
        "cmn-hans": "zh",
        "cmn-hant": "zh",
        "zh": "zh",
        "chinese": "zh",
    }
    return mapping.get(raw, raw.split("-")[0])


def normalize_pos(value: Optional[str]) -> Optional[str]:
    if value is None:
        return None
    raw = str(value).strip().lower()
    if not raw:
        return None
    mapping = {
        "n": "noun",
        "noun": "noun",
        "v": "verb",
        "verb": "verb",
        "adj": "adj",
        "adjective": "adj",
        "a": "adj",
        "s": "adj",
        "adv": "adv",
        "adverb": "adv",
        "r": "adv",
        "prep": "prep",
        "preposition": "prep",
        "pron": "pron",
        "pronoun": "pron",
        "conj": "conj",
        "conjunction": "conj",
        "int": "interj",
        "interj": "interj",
        "interjection": "interj",
        "exp": "expr",
        "expression": "expr",
        "phrase": "expr",
        "pref": "prefix",
        "prefix": "prefix",
        "suf": "suffix",
        "suffix": "suffix",
        "name": "name",
    }
    if raw in mapping:
        return mapping[raw]
    raw = re.sub(r"[^a-z]+", " ", raw).strip()
    return mapping.get(raw, raw or None)


def normalize_pos_jmdict(tags: list[str]) -> Optional[str]:
    if not tags:
        return None
    joined = " ".join(tags).lower()
    checks = [
        ("noun", ["noun", "n ", " n", " n-", "名詞"]),
        ("verb", ["verb", "v1", "v5", "vk", "vs", "vz"]),
        ("adj", ["adjective", "adj", "adjectival", "形容詞"]),
        ("adv", ["adverb", "adv", "副詞"]),
        ("expr", ["expression", "exp", "idiom"]),
        ("interj", ["interjection", "int", "感動詞"]),
        ("prefix", ["prefix", "接頭辞"]),
        ("suffix", ["suffix", "接尾辞"]),
    ]
    for normalized, needles in checks:
        if any(needle in joined for needle in needles):
            return normalized
    return None


def split_semicolons_outside_quotes(text: str) -> list[str]:
    parts: list[str] = []
    buf: list[str] = []
    in_quotes = False
    escape = False
    for ch in text:
        if ch == '"' and not escape:
            in_quotes = not in_quotes
            buf.append(ch)
            continue
        if ch == ';' and not in_quotes:
            parts.append("".join(buf).strip())
            buf = []
            continue
        if ch == '\\' and not escape:
            escape = True
        else:
            escape = False
        buf.append(ch)
    if buf:
        parts.append("".join(buf).strip())
    return [p for p in parts if p]


def parse_wordnet_gloss(gloss: str) -> tuple[list[str], list[str]]:
    definitions: list[str] = []
    examples: list[str] = []
    for part in split_semicolons_outside_quotes(gloss):
        cleaned = part.strip()
        if not cleaned:
            continue
        if cleaned.startswith('"') and cleaned.endswith('"') and len(cleaned) >= 2:
            examples.append(trim_text(cleaned[1:-1], 240))
        else:
            definitions.append(clean_gloss(cleaned, 220))
    return definitions, examples


# -----------------------------
# Download helpers
# -----------------------------

def download_file(url: str, dest: Path) -> Path:
    dest.parent.mkdir(parents=True, exist_ok=True)
    if dest.exists() and dest.stat().st_size > 0:
        log(f"Using existing file: {dest}")
        return dest
    log(f"Downloading {url} -> {dest}")
    parsed = urllib.parse.urlparse(url)
    if parsed.scheme in {"http", "https"}:
        req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
        resp = urllib.request.urlopen(req, timeout=120)
    else:
        resp = urllib.request.urlopen(url, timeout=120)
    with resp as r, open(dest, "wb") as f:
        shutil.copyfileobj(r, f)
    return dest


def resolve_source(path_or_url: Optional[str], default_url: str, dest: Path, allow_download: bool) -> Optional[Path]:
    if not path_or_url:
        if not allow_download:
            return None
        return download_file(default_url, dest)
    parsed = urllib.parse.urlparse(path_or_url)
    if parsed.scheme in {"http", "https", "ftp"}:
        return download_file(path_or_url, dest)
    path = Path(path_or_url)
    if not path.exists():
        raise FileNotFoundError(f"Source not found: {path}")
    return path


# -----------------------------
# WordNet
# -----------------------------

def find_member(tf: tarfile.TarFile, filename: str) -> tarfile.TarInfo:
    for member in tf.getmembers():
        if member.isfile() and member.name.endswith(filename):
            return member
    raise FileNotFoundError(f"Archive member not found: {filename}")


def parse_wordnet_exc_file(fobj) -> dict[str, list[str]]:
    mapping: dict[str, list[str]] = {}
    for raw in io.TextIOWrapper(fobj, encoding="utf-8", errors="replace"):
        line = raw.strip()
        if not line:
            continue
        parts = line.split()
        if len(parts) < 2:
            continue
        inflected = parts[0].replace("_", " ")
        bases = [p.replace("_", " ") for p in parts[1:]]
        mapping[inflected] = bases
    return mapping


def parse_wordnet_data_line(line: str) -> tuple[list[str], list[str], list[str]]:
    if "|" not in line:
        return [], [], []
    head, gloss = line.split("|", 1)
    tokens = head.strip().split()
    if len(tokens) < 4:
        return [], [], []
    idx = 3
    try:
        w_cnt = int(tokens[idx], 16)
    except ValueError:
        return [], [], []
    idx += 1
    words: list[str] = []
    for _ in range(w_cnt):
        if idx + 1 >= len(tokens):
            return [], [], []
        words.append(tokens[idx].replace("_", " "))
        idx += 2
    definitions, examples = parse_wordnet_gloss(gloss.strip())
    return words, definitions, examples


def parse_wordnet_archive(path: Path, limit: Optional[int] = None) -> Iterator[EntryPayload]:
    aggregates: dict[tuple[str, str], dict[str, list[str] | str | None]] = {}
    exc_maps: dict[str, dict[str, list[str]]] = {}
    count = 0
    pos_members = {
        "noun": "dict/data.noun",
        "verb": "dict/data.verb",
        "adj": "dict/data.adj",
        "adv": "dict/data.adv",
    }
    exc_members = {
        "noun": "dict/noun.exc",
        "verb": "dict/verb.exc",
        "adj": "dict/adj.exc",
        "adv": "dict/adv.exc",
    }
    with tarfile.open(path, "r:*") as tf:
        for pos, member_name in exc_members.items():
            try:
                exc_maps[pos] = parse_wordnet_exc_file(tf.extractfile(find_member(tf, member_name)))
            except FileNotFoundError:
                exc_maps[pos] = {}
        for pos, member_name in pos_members.items():
            member = find_member(tf, member_name)
            with io.TextIOWrapper(tf.extractfile(member), encoding="utf-8", errors="replace") as f:
                for raw in f:
                    if raw.startswith("  "):
                        continue
                    words, definitions, examples = parse_wordnet_data_line(raw)
                    if not words:
                        continue
                    synonyms = words[:]
                    for lemma in words:
                        key = (lemma, pos)
                        state = aggregates.setdefault(
                            key,
                            {
                                "forms": [lemma],
                                "senses": [],
                                "examples": [],
                                "translations": [],
                                "readings": [],
                            },
                        )
                        for definition in definitions:
                            cast_list(state["senses"]).append(definition)
                        for example in examples:
                            cast_list(state["examples"]).append(example)
                        related = [w for w in synonyms if w != lemma][:5]
                        if related:
                            cast_list(state["senses"]).append("Synonyms: " + ", ".join(related))
        for pos, exc_map in exc_maps.items():
            for inflected, bases in exc_map.items():
                for base in bases:
                    key = (base, pos)
                    if key in aggregates:
                        cast_list(aggregates[key]["forms"]).append(inflected)

    for (lemma, pos), state in aggregates.items():
        yield EntryPayload(
            lang="en",
            lemma=lemma,
            pos=pos,
            source="wordnet",
            readings=[],
            senses=dedupe_keep_order(cast_list(state["senses"]))[:6],
            translations=[],
            forms=dedupe_keep_order(cast_list(state["forms"]))[:32],
            examples=[(x, None) for x in dedupe_keep_order(cast_list(state["examples"]))[:3]],
        )
        count += 1
        if limit and count >= limit:
            break


# -----------------------------
# JMdict
# -----------------------------

def parse_jmdict(path: Path, limit: Optional[int] = None) -> Iterator[EntryPayload]:
    count = 0
    with open_text_auto(path) as f:
        context = ET.iterparse(f, events=("end",))
        for _event, elem in context:
            if elem.tag != "entry":
                continue
            kebs = [x.text.strip() for x in elem.findall("k_ele/keb") if x.text and x.text.strip()]
            rebs = [x.text.strip() for x in elem.findall("r_ele/reb") if x.text and x.text.strip()]
            lemma = kebs[0] if kebs else (rebs[0] if rebs else "")
            if not lemma:
                elem.clear()
                continue

            pos_tags: list[str] = []
            senses: list[str] = []
            translations: list[tuple[str, str]] = []
            examples: list[tuple[str, Optional[str]]] = []

            for sense in elem.findall("sense"):
                pos_tags.extend([x.text.strip() for x in sense.findall("pos") if x.text and x.text.strip()])
                per_sense_en: list[str] = []
                first_any: Optional[str] = None
                for gloss in sense.findall("gloss"):
                    if not gloss.text or not gloss.text.strip():
                        continue
                    text = trim_text(gloss.text.strip(), 220)
                    lang = normalize_lang_code(gloss.attrib.get(XML_LANG) or "eng") or "en"
                    translations.append((lang, text))
                    if first_any is None:
                        first_any = text
                    if lang == "en":
                        per_sense_en.append(text)
                if per_sense_en:
                    senses.extend(per_sense_en[:2])
                elif first_any:
                    senses.append(first_any)

                for example in sense.findall("example"):
                    ex_text = None
                    ex_tr = None
                    for sent in example.findall("ex_sent"):
                        if not sent.text or not sent.text.strip():
                            continue
                        lang = normalize_lang_code(sent.attrib.get(XML_LANG))
                        if lang == "ja" and ex_text is None:
                            ex_text = trim_text(sent.text.strip(), 240)
                        elif lang in {"en", "ru"} and ex_tr is None:
                            ex_tr = trim_text(sent.text.strip(), 240)
                    if ex_text:
                        examples.append((ex_text, ex_tr))

            yield EntryPayload(
                lang="ja",
                lemma=lemma,
                pos=normalize_pos_jmdict(pos_tags),
                source="jmdict",
                readings=[("kana", x) for x in rebs[:8]],
                senses=dedupe_keep_order(senses)[:6],
                translations=dedupe_keep_order(translations)[:12],
                forms=dedupe_keep_order([*kebs, *rebs])[:24],
                examples=dedupe_keep_order(examples)[:3],
            )
            count += 1
            elem.clear()
            if limit and count >= limit:
                break


# -----------------------------
# CC-CEDICT
# -----------------------------

def clean_cedict_definition(text: str) -> str:
    text = trim_text(text, 220)
    return text.strip()


def parse_cedict(path: Path, limit: Optional[int] = None) -> Iterator[EntryPayload]:
    line_re = re.compile(r"^(\S+)\s+(\S+)\s+\[(.*?)\]\s+/(.+)/$")
    count = 0
    with open_text_auto(path) as f:
        for raw in f:
            line = raw.strip()
            if not line or line.startswith("#"):
                continue
            m = line_re.match(line)
            if not m:
                continue
            trad, simp, pinyin, defs = m.groups()
            definitions = [clean_cedict_definition(x) for x in defs.split("/") if x.strip()]
            if not definitions:
                continue
            yield EntryPayload(
                lang="zh",
                lemma=simp,
                pos=None,
                source="cc-cedict",
                readings=[("pinyin", pinyin)] if pinyin else [],
                senses=definitions[:6],
                translations=[("en", x) for x in definitions[:8]],
                forms=[trad] if trad != simp else [],
                examples=[],
            )
            count += 1
            if limit and count >= limit:
                break


# -----------------------------
# Kaikki JSONL
# -----------------------------

def extract_kaikki_examples(sense: dict) -> list[tuple[str, Optional[str]]]:
    out: list[tuple[str, Optional[str]]] = []
    for item in sense.get("examples", []) or []:
        if isinstance(item, str):
            text = trim_text(item, 240)
            if text:
                out.append((text, None))
            continue
        if not isinstance(item, dict):
            continue
        text = item.get("text") or item.get("example") or item.get("quote") or item.get("ref")
        tr = item.get("english") or item.get("translation")
        if isinstance(tr, dict):
            tr = tr.get("text")
        if isinstance(text, str) and text.strip():
            out.append((trim_text(text, 240), trim_text(str(tr), 240) if tr else None))
    return out


def extract_kaikki_translations(obj: dict) -> list[tuple[str, str]]:
    out: list[tuple[str, str]] = []

    def add_from_list(items):
        if not items:
            return
        for item in items:
            if isinstance(item, str):
                out.append(("unknown", trim_text(item, 220)))
                continue
            if not isinstance(item, dict):
                continue
            word = item.get("word") or item.get("text") or item.get("roman")
            lang = normalize_lang_code(item.get("lang_code") or item.get("code") or item.get("lang")) or "unknown"
            if isinstance(word, str) and word.strip():
                out.append((lang, trim_text(word, 220)))

    add_from_list(obj.get("translations"))
    for sense in obj.get("senses", []) or []:
        if isinstance(sense, dict):
            add_from_list(sense.get("translations"))
    return out


def extract_kaikki_readings(obj: dict) -> list[tuple[str, str]]:
    out: list[tuple[str, str]] = []
    for sound in obj.get("sounds", []) or []:
        if not isinstance(sound, dict):
            continue
        for key, script in [("ipa", "ipa"), ("zh-pron", "pron"), ("enpr", "enpr"), ("roman", "roman"), ("hangul", "hangul")]:
            value = sound.get(key)
            if isinstance(value, str) and value.strip():
                out.append((script, trim_text(value, 100)))
    return out


def parse_kaikki_jsonl(path: Path, allowed_langs: set[str], source_name: str, limit: Optional[int] = None) -> Iterator[EntryPayload]:
    count = 0
    with open_text_auto(path) as f:
        for line_no, raw in enumerate(f, start=1):
            line = raw.strip()
            if not line:
                continue
            try:
                obj = json.loads(line)
            except json.JSONDecodeError as exc:
                raise ValueError(f"Invalid JSON at {path}:{line_no}: {exc}") from exc

            lang = normalize_lang_code(obj.get("lang_code") or obj.get("lang"))
            if lang not in allowed_langs:
                continue
            lemma = obj.get("word")
            if not isinstance(lemma, str) or not lemma.strip():
                continue

            senses: list[str] = []
            examples: list[tuple[str, Optional[str]]] = []
            for sense in obj.get("senses", []) or []:
                if not isinstance(sense, dict):
                    continue
                glosses = sense.get("glosses") or sense.get("raw_glosses") or []
                for gloss in glosses:
                    if isinstance(gloss, str) and gloss.strip():
                        senses.append(clean_gloss(gloss, 220))
                examples.extend(extract_kaikki_examples(sense))

            forms = []
            for form in obj.get("forms", []) or []:
                if isinstance(form, dict):
                    value = form.get("form")
                    if isinstance(value, str) and value.strip():
                        forms.append(value)
                elif isinstance(form, str) and form.strip():
                    forms.append(form)

            yield EntryPayload(
                lang=lang,
                lemma=lemma,
                pos=normalize_pos(obj.get("pos")),
                source=source_name,
                readings=dedupe_keep_order(extract_kaikki_readings(obj))[:8],
                senses=dedupe_keep_order(senses)[:6],
                translations=dedupe_keep_order(extract_kaikki_translations(obj))[:12],
                forms=dedupe_keep_order(forms)[:24],
                examples=dedupe_keep_order(examples)[:3],
            )
            count += 1
            if limit and count >= limit:
                break


def cast_list(value):
    return value if isinstance(value, list) else []


# -----------------------------
# Build orchestration
# -----------------------------

def import_stream(router: DBRouter, items: Iterator[EntryPayload], label: str) -> int:
    count = 0
    for payload in items:
        router.insert(payload)
        count += 1
        if count % 5000 == 0:
            log(f"Imported {count} entries from {label}...")
    log(f"Imported {count} entries from {label}")
    return count


def build_from_args(args: argparse.Namespace) -> dict[str, dict[str, int]]:
    workdir = args.workdir.resolve()
    sources_dir = workdir / "sources"
    sources_dir.mkdir(parents=True, exist_ok=True)

    wordnet_path = None if args.no_wordnet else resolve_source(args.wordnet, DEFAULT_URLS["wordnet"], sources_dir / "WordNet-3.0.tar.gz", args.download_missing)
    jmdict_path = None if args.no_jmdict else resolve_source(args.jmdict, DEFAULT_URLS["jmdict"], sources_dir / "JMdict.gz", args.download_missing)
    cedict_path = None if args.no_cedict else resolve_source(args.cedict, DEFAULT_URLS["cedict"], sources_dir / "cedict_ts.u8.gz", args.download_missing)
    kaikki_ru_path = None if args.no_kaikki_ru else resolve_source(args.kaikki_ru, DEFAULT_URLS["kaikki_ru"], sources_dir / "ruwiktionary.jsonl.gz", args.download_missing)
    kaikki_ko_path = None if args.no_kaikki_ko else resolve_source(args.kaikki_ko, DEFAULT_URLS["kaikki_ko"], sources_dir / "kowiktionary.jsonl.gz", args.download_missing)

    if args.split:
        out_path = args.out.resolve()
    else:
        out_path = args.out.resolve()
        if out_path.suffix != ".db":
            raise ValueError("For combined mode, --out must point to a .db file")

    router = DBRouter(out_path, split=args.split)
    try:
        if wordnet_path:
            import_stream(router, parse_wordnet_archive(wordnet_path, limit=args.limit), "WordNet")
        if jmdict_path:
            import_stream(router, parse_jmdict(jmdict_path, limit=args.limit), "JMdict")
        if cedict_path:
            import_stream(router, parse_cedict(cedict_path, limit=args.limit), "CC-CEDICT")
        if kaikki_ru_path:
            import_stream(router, parse_kaikki_jsonl(kaikki_ru_path, {"ru"}, "kaikki-ruwiktionary", limit=args.limit), "Kaikki RU")
        if kaikki_ko_path:
            import_stream(router, parse_kaikki_jsonl(kaikki_ko_path, {"ko"}, "kaikki-kowiktionary", limit=args.limit), "Kaikki KO")
        stats = router.optimize()
        return stats
    finally:
        router.close()


# -----------------------------
# CLI
# -----------------------------

def build_arg_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(description="Build an offline SQLite dictionary for an Android reader app.")
    p.add_argument("--workdir", type=Path, default=Path("./build-dictionary-work"), help="Working directory for downloads and temp files")
    p.add_argument("--out", type=Path, default=Path("./dictionary.db"), help="Output .db file, or output directory when --split is used")
    p.add_argument("--split", action="store_true", help="Write one SQLite DB per language instead of one combined DB")
    p.add_argument("--download-missing", action="store_true", default=True, help="Download official sources when local paths are not provided (default: on)")
    p.add_argument("--no-download-missing", dest="download_missing", action="store_false", help="Do not download anything automatically")
    p.add_argument("--limit", type=int, default=None, help="Import only the first N entries from each source (for testing)")
    p.add_argument("--wordnet", help="Path or URL to Princeton WordNet 3.0 tar.gz")
    p.add_argument("--jmdict", help="Path or URL to JMdict .gz or XML")
    p.add_argument("--cedict", help="Path or URL to CC-CEDICT .gz or text file")
    p.add_argument("--kaikki-ru", help="Path or URL to ruwiktionary raw JSONL(.gz)")
    p.add_argument("--kaikki-ko", help="Path or URL to kowiktionary raw JSONL(.gz)")
    p.add_argument("--no-wordnet", action="store_true", help="Skip WordNet")
    p.add_argument("--no-jmdict", action="store_true", help="Skip JMdict")
    p.add_argument("--no-cedict", action="store_true", help="Skip CC-CEDICT")
    p.add_argument("--no-kaikki-ru", action="store_true", help="Skip Kaikki Russian")
    p.add_argument("--no-kaikki-ko", action="store_true", help="Skip Kaikki Korean")
    return p


def main() -> int:
    args = build_arg_parser().parse_args()
    stats = build_from_args(args)
    print(json.dumps(stats, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
