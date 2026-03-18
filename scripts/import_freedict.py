from __future__ import annotations

import csv
import io
import json
import tarfile
import tempfile
import urllib.request
import xml.etree.ElementTree as ET
from collections import OrderedDict
from pathlib import Path


DB_URL = "https://freedict.org/freedict-database.json"
ROOT = Path(__file__).resolve().parents[1]
ASSETS_DIR = ROOT / "android" / "core-domain" / "src" / "main" / "assets" / "dictionaries" / "freedict"
SELECTED = OrderedDict(
    [
        ("eng-rus", "en-ru"),
        ("rus-eng", "ru-en"),
        ("eng-jpn", "en-ja"),
        ("jpn-eng", "ja-en"),
        ("jpn-rus", "ja-ru"),
        ("eng-zho", "en-zh"),
        ("zho-rus", "zh-ru"),
    ]
)
NS = {"tei": "http://www.tei-c.org/ns/1.0"}
POS_MAP = {
    "adj": "adjective",
    "adv": "adverb",
    "n": "noun",
    "pn": "noun",
    "v": "verb",
}


def normalize_cell(text: str) -> str:
    return " ".join(text.replace("\t", " ").replace("\r", " ").replace("\n", " ").split()).strip()


def download_database() -> list[dict]:
    with urllib.request.urlopen(DB_URL) as response:
        return json.load(response)


def release_url(entry: dict) -> str:
    for release in entry.get("releases", []):
        if release.get("platform") == "src":
            return release["URL"]
    raise RuntimeError(f"No src release for {entry['name']}")


def parse_dictionary(tei_path: Path) -> dict[str, tuple[str | None, list[str]]]:
    tree = ET.parse(tei_path)
    root = tree.getroot()
    aggregated: dict[str, tuple[str | None, list[str]]] = OrderedDict()

    for entry in root.findall(".//tei:entry", NS):
        orth = entry.findtext("./tei:form/tei:orth", default="", namespaces=NS)
        lemma = normalize_cell(orth).lower()
        if not lemma:
            continue

        pos_raw = normalize_cell(entry.findtext("./tei:gramGrp/tei:pos", default="", namespaces=NS)).lower()
        pos = POS_MAP.get(pos_raw) if pos_raw else None

        translations: list[str] = []
        for quote in entry.findall(".//tei:cit[@type='trans']/tei:quote", NS):
            value = normalize_cell("".join(quote.itertext()))
            if value and value not in translations:
                translations.append(value)
            if len(translations) >= 6:
                break

        if not translations:
            continue

        current_pos, current_translations = aggregated.get(lemma, (None, []))
        merged = list(current_translations)
        for item in translations:
            if item not in merged:
                merged.append(item)
            if len(merged) >= 6:
                break

        aggregated[lemma] = (current_pos or pos, merged)

    return aggregated


def write_dictionary_tsv(path: Path, entries: dict[str, tuple[str | None, list[str]]]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8", newline="") as fp:
        writer = csv.writer(fp, delimiter="\t", lineterminator="\n")
        writer.writerow(["lemma", "part_of_speech", "translations"])
        for lemma, (pos, translations) in entries.items():
            writer.writerow([lemma, pos or "", "|".join(translations)])


def extract_archive(archive_path: Path, destination: Path) -> Path:
    with tarfile.open(archive_path, "r:xz") as tar:
        tar.extractall(destination)
    directories = [item for item in destination.iterdir() if item.is_dir()]
    if not directories:
        raise RuntimeError(f"No extracted directory for {archive_path.name}")
    return directories[0]


def main() -> None:
    ASSETS_DIR.mkdir(parents=True, exist_ok=True)
    db = {
        entry["name"]: entry
        for entry in download_database()
        if isinstance(entry, dict) and entry.get("name")
    }
    manifest: list[dict[str, str | int]] = []
    attribution_lines = [
        "# FreeDict dictionary assets",
        "",
        "These offline dictionary assets were generated from FreeDict source releases.",
        "Upstream metadata for the currently bundled files:",
        "",
    ]

    copied_license = False

    with tempfile.TemporaryDirectory() as tmp_dir_str:
        tmp_dir = Path(tmp_dir_str)

        for freedict_name, output_name in SELECTED.items():
            entry = db[freedict_name]
            src_url = release_url(entry)
            archive_path = tmp_dir / f"{freedict_name}.src.tar.xz"
            urllib.request.urlretrieve(src_url, archive_path)
            extracted_dir = extract_archive(archive_path, tmp_dir / freedict_name)
            tei_path = next(extracted_dir.glob("*.tei"))
            entries = parse_dictionary(tei_path)
            write_dictionary_tsv(ASSETS_DIR / f"{output_name}.tsv", entries)

            if not copied_license:
                license_target = ASSETS_DIR / "COPYING-FreeDict-CC-BY-SA-3.0.txt"
                license_target.write_text((extracted_dir / "COPYING").read_text(encoding="utf-8"), encoding="utf-8")
                copied_license = True

            manifest.append(
                {
                    "pair": output_name,
                    "sourceName": freedict_name,
                    "edition": str(entry.get("edition", "")),
                    "headwords": int(str(entry.get("headwords", "0")).replace(",", "")),
                    "license": "CC BY-SA 3.0",
                    "sourceUrl": src_url,
                    "generatedFile": f"{output_name}.tsv",
                }
            )
            attribution_lines.extend(
                [
                    f"- `{output_name}` from `{freedict_name}`",
                    f"  - edition: {entry.get('edition', '')}",
                    f"  - headwords: {entry.get('headwords', '')}",
                    f"  - source: {src_url}",
                    "  - license: Creative Commons Attribution-ShareAlike 3.0 (see COPYING-FreeDict-CC-BY-SA-3.0.txt)",
                ]
            )

    (ASSETS_DIR / "manifest.json").write_text(
        json.dumps(manifest, ensure_ascii=False, indent=2),
        encoding="utf-8",
    )
    (ASSETS_DIR / "ATTRIBUTION.md").write_text("\n".join(attribution_lines) + "\n", encoding="utf-8")


if __name__ == "__main__":
    main()
