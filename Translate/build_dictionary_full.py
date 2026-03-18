#!/usr/bin/env python3
from __future__ import annotations

import argparse
import gzip
import json
import re
import sqlite3
import unicodedata
import xml.etree.ElementTree as ET
from dataclasses import dataclass, field
from pathlib import Path
from typing import Iterable, Iterator, Optional

CJK_LANGS = {"ja", "zh", "ko"}

@dataclass
class EntryPayload:
    lang: str
    lemma: str
    pos: str = ""
    source: str = ""
    readings: list[tuple[str, str]] = field(default_factory=list)
    senses: list[str] = field(default_factory=list)
    translations: list[tuple[str, str]] = field(default_factory=list)
    forms: list[str] = field(default_factory=list)
    examples: list[tuple[str, Optional[str]]] = field(default_factory=list)
    rank: int = 0

def normalize_text(text: str, lang: str) -> str:
    text = unicodedata.normalize("NFKC", text or "").strip()
    text = re.sub(r"\s+", " ", text)
    if lang not in CJK_LANGS:
        text = text.casefold()
    return text

def dedupe_keep_order(items: Iterable):
    out, seen = [], set()
    for item in items:
        key = json.dumps(item, ensure_ascii=False, sort_keys=True) if isinstance(item, (tuple, list, dict)) else str(item)
        if key and key not in seen:
            seen.add(key)
            out.append(item)
    return out

def trim(text: str, max_len: int = 240) -> str:
    text = re.sub(r"\s+", " ", (text or "")).strip()
    return text if len(text) <= max_len else text[: max_len - 1].rstrip() + "…"

def open_text_auto(path: Path):
    return gzip.open(path, "rt", encoding="utf-8") if str(path).endswith(".gz") else open(path, "r", encoding="utf-8")

def normalize_pos(value) -> str:
    if not value:
        return ""
    value = str(value).strip().lower()
    mapping = {
        "n": "noun", "noun": "noun",
        "v": "verb", "verb": "verb",
        "adj": "adjective", "adjective": "adjective",
        "adv": "adverb", "adverb": "adverb",
    }
    return mapping.get(value, value[:40])

def clean_gloss(text: str) -> str:
    text = re.sub(r"\([^)]*\)", "", text or "")
    text = re.sub(r"\[[^\]]*\]", "", text)
    return trim(text.strip(" ;,/-"), 220)

class DictionaryDB:
    def __init__(self, path: Path):
        self.conn = sqlite3.connect(path)
        self.conn.execute("PRAGMA journal_mode=WAL")
        self.conn.execute("PRAGMA synchronous=NORMAL")
        self.conn.execute("PRAGMA foreign_keys=ON")
        self.conn.execute("PRAGMA user_version=1")
        self.conn.executescript("""
        CREATE TABLE IF NOT EXISTS entries (
          id INTEGER PRIMARY KEY,
          lang TEXT NOT NULL,
          lemma TEXT NOT NULL,
          normalized_lemma TEXT NOT NULL,
          pos TEXT NOT NULL DEFAULT '',
          source TEXT NOT NULL,
          rank INTEGER NOT NULL DEFAULT 0
        );
        CREATE UNIQUE INDEX IF NOT EXISTS idx_entries_unique
          ON entries(lang, normalized_lemma, pos, source);
        CREATE TABLE IF NOT EXISTS forms (
          id INTEGER PRIMARY KEY,
          lang TEXT NOT NULL,
          form TEXT NOT NULL,
          normalized_form TEXT NOT NULL,
          entry_id INTEGER NOT NULL REFERENCES entries(id) ON DELETE CASCADE
        );
        CREATE INDEX IF NOT EXISTS idx_forms_lang_norm ON forms(lang, normalized_form);
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
        """)
        self.conn.commit()

    def insert_entry(self, payload: EntryPayload):
        lemma = (payload.lemma or "").strip()
        if not lemma:
            return
        pos = normalize_pos(payload.pos)
        norm = normalize_text(lemma, payload.lang)
        cur = self.conn.cursor()
        cur.execute("INSERT OR IGNORE INTO entries(lang, lemma, normalized_lemma, pos, source, rank) VALUES(?,?,?,?,?,?)",
                    (payload.lang, lemma, norm, pos, payload.source, payload.rank))
        cur.execute("SELECT id FROM entries WHERE lang=? AND normalized_lemma=? AND pos=? AND source=?",
                    (payload.lang, norm, pos, payload.source))
        row = cur.fetchone()
        if not row:
            return
        entry_id = row[0]
        cur.executemany("INSERT INTO forms(lang, form, normalized_form, entry_id) VALUES (?,?,?,?)",
                        [(payload.lang, f, normalize_text(f, payload.lang), entry_id)
                         for f in dedupe_keep_order([lemma, *payload.forms])[:24] if f and f.strip()])
        cur.executemany("INSERT INTO readings(script, text, entry_id) VALUES (?,?,?)",
                        [(s, t, entry_id) for s, t in dedupe_keep_order(payload.readings)[:8] if t and t.strip()])
        cur.executemany("INSERT INTO senses(entry_id, ord, gloss) VALUES (?,?,?)",
                        [(entry_id, i + 1, g) for i, g in enumerate(dedupe_keep_order([clean_gloss(x) for x in payload.senses if x])[:5])])
        trs = []
        for tl, txt in dedupe_keep_order(payload.translations):
            if tl and txt:
                trs.append((str(tl).lower()[:12], trim(str(txt), 120)))
        cur.executemany("INSERT INTO translations(entry_id, target_lang, text, ord) VALUES (?,?,?,?)",
                        [(entry_id, tl, txt, i + 1) for i, (tl, txt) in enumerate(trs[:8])])
        cur.executemany("INSERT INTO examples(entry_id, text, translation) VALUES (?,?,?)",
                        [(entry_id, trim(t, 220), trim(tr, 220) if tr else None)
                         for t, tr in dedupe_keep_order(payload.examples)[:3] if t])

    def close(self):
        self.conn.commit()
        self.conn.execute("ANALYZE")
        self.conn.close()

def parse_wordnet_jsonl(path: Path) -> Iterator[EntryPayload]:
    with open_text_auto(path) as f:
        for line in f:
            if not line.strip():
                continue
            obj = json.loads(line)
            lemma = obj.get("lemma")
            if lemma:
                yield EntryPayload(
                    lang="en",
                    lemma=lemma,
                    pos=normalize_pos(obj.get("pos")),
                    source="wordnet",
                    forms=[x for x in obj.get("forms", []) if isinstance(x, str)][:16],
                    senses=[clean_gloss(x) for x in obj.get("senses", []) if isinstance(x, str)][:5],
                    examples=[(trim(x, 220), None) for x in obj.get("examples", []) if isinstance(x, str)][:3],
                    rank=100,
                )

def parse_jmdict(path: Path) -> Iterator[EntryPayload]:
    with open_text_auto(path) as f:
        root = ET.parse(f).getroot()
    for entry in root.findall("entry"):
        kebs = [el.text.strip() for el in entry.findall("k_ele/keb") if el.text and el.text.strip()]
        rebs = [el.text.strip() for el in entry.findall("r_ele/reb") if el.text and el.text.strip()]
        glosses = [trim(el.text.strip(), 180) for el in entry.findall("sense/gloss") if el.text and el.text.strip()]
        lemma = kebs[0] if kebs else (rebs[0] if rebs else "")
        if lemma:
            yield EntryPayload(
                lang="ja",
                lemma=lemma,
                source="jmdict",
                readings=[("kana", x) for x in rebs[:8]],
                forms=dedupe_keep_order([*kebs, *rebs])[:16],
                senses=dedupe_keep_order(glosses)[:5],
                translations=[("en", g) for g in dedupe_keep_order(glosses)[:5]],
                rank=100,
            )

CEDICT_RE = re.compile(r"^(\S+)\s+(\S+)\s+\[([^\]]+)\]\s+/(.+)/\s*$")

def parse_cedict(path: Path) -> Iterator[EntryPayload]:
    with open_text_auto(path) as f:
        for raw in f:
            line = raw.strip()
            if not line or line.startswith("#"):
                continue
            m = CEDICT_RE.match(line)
            if not m:
                continue
            trad, simp, pinyin, gloss_blob = m.groups()
            glosses = [clean_gloss(x) for x in gloss_blob.split("/") if x.strip()]
            yield EntryPayload(
                lang="zh",
                lemma=simp,
                source="cc-cedict",
                readings=[("pinyin", pinyin)],
                forms=dedupe_keep_order([simp, trad]),
                senses=glosses[:5],
                translations=[("en", g) for g in glosses[:5]],
                rank=100,
            )

def parse_kaikki(path: Path, lang: str) -> Iterator[EntryPayload]:
    with open_text_auto(path) as f:
        for line in f:
            if not line.strip():
                continue
            obj = json.loads(line)
            word = obj.get("word")
            if not word:
                continue
            obj_lang = (obj.get("lang_code") or "").lower()
            if obj_lang and obj_lang != lang:
                continue
            forms = [str(form.get("form")) for form in (obj.get("forms", []) or []) if form.get("form")]
            readings = []
            for sound in obj.get("sounds", []) or []:
                if sound.get("ipa"):
                    readings.append(("ipa", str(sound["ipa"])))
                if sound.get("roman"):
                    readings.append(("roman", str(sound["roman"])))
            senses, translations, examples = [], [], []
            for sense in obj.get("senses", []) or []:
                for g in sense.get("glosses", []) or []:
                    senses.append(clean_gloss(str(g)))
                for tr in sense.get("translations", []) or []:
                    w = tr.get("word") or tr.get("text")
                    lc = tr.get("lang_code") or tr.get("code") or tr.get("lang")
                    if w and lc:
                        translations.append((str(lc).lower(), str(w)))
                for ex in sense.get("examples", []) or []:
                    if isinstance(ex, dict):
                        txt = ex.get("text") or ex.get("example")
                        tr = ex.get("translation")
                    else:
                        txt, tr = ex, None
                    if txt:
                        examples.append((str(txt), str(tr) if tr else None))
            translations = dedupe_keep_order(translations)
            ru_first = [x for x in translations if x[0] == "ru"]
            en_next = [x for x in translations if x[0] == "en"]
            rest = [x for x in translations if x[0] not in {"ru", "en"}]
            ranked = ru_first + en_next + rest
            if not ranked and senses:
                ranked = [("en", s) for s in senses[:3]]
            yield EntryPayload(
                lang=lang,
                lemma=str(word),
                pos=normalize_pos(obj.get("pos")),
                source="kaikki",
                readings=readings[:8],
                senses=dedupe_keep_order(senses)[:5],
                translations=ranked[:8],
                forms=dedupe_keep_order(forms)[:16],
                examples=dedupe_keep_order(examples)[:3],
                rank=70 if ru_first else 50,
            )

def parse_kaikki_arg(values: list[str]) -> dict[str, Path]:
    out = {}
    for item in values:
        if ":" not in item:
            raise SystemExit(f"--kaikki value must be lang:path, got: {item}")
        lang, path = item.split(":", 1)
        out[lang.strip().lower()] = Path(path).expanduser()
    return out

def build_language_db(out_dir: Path, lang: str, parser: Iterator[EntryPayload]) -> Path:
    out_dir.mkdir(parents=True, exist_ok=True)
    db_path = out_dir / f"dict-{lang}.db"
    if db_path.exists():
        db_path.unlink()
    db = DictionaryDB(db_path)
    count = 0
    for entry in parser:
        db.insert_entry(entry)
        count += 1
        if count % 5000 == 0:
            db.conn.commit()
    db.close()
    return db_path

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--out-dir", required=True, type=Path)
    ap.add_argument("--wordnet", type=Path)
    ap.add_argument("--jmdict", type=Path)
    ap.add_argument("--cedict", type=Path)
    ap.add_argument("--kaikki", action="append", default=[], help="lang:path")
    args = ap.parse_args()

    wonke = parse_kaikki_arg(args.kaikki)
    built = []
    if args.wordnet:
        built.append(build_language_db(args.out_dir, "en", parse_wordnet_jsonl(args.wordnet)))
    if args.jmdict:
        built.append(build_language_db(args.out_dir, "ja", parse_jmdict(args.jmdict)))
    if args.cedict:
        built.append(build_language_db(args.out_dir, "zh", parse_cedict(args.cedict)))
    for lang, path in wonke.items():
        built.append(build_language_db(args.out_dir, lang, parse_kaikki(path, lang)))
    print("Built:")
    for path in built:
        print(path)

if __name__ == "__main__":
    main()
