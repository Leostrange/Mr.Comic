from __future__ import annotations

import argparse
import gzip
import subprocess
import sys
from pathlib import Path


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Build the shipped per-language Room dictionary assets for Mr.Comic."
    )
    parser.add_argument(
        "--repo-root",
        type=Path,
        default=Path(__file__).resolve().parents[1],
        help="Repository root. Defaults to the project root above Translate/.",
    )
    parser.add_argument(
        "--sources-dir",
        type=Path,
        default=None,
        help="Directory with prepared source dumps. Defaults to <repo-root>/build-dictionary-work/sources.",
    )
    parser.add_argument(
        "--out-dir",
        type=Path,
        default=None,
        help="Directory where dictionary_<lang>.db files will be written. Defaults to android/app/src/main/assets/databases.",
    )
    parser.add_argument(
        "--clean-monolith",
        action="store_true",
        help="Remove the old monolithic dictionary.db asset after all per-language databases are built.",
    )
    parser.add_argument(
        "--keep-raw-db",
        action="store_true",
        help="Keep raw .db files next to compressed assets. By default raw DB files are removed after gzip packaging.",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    repo_root = args.repo_root.resolve()
    builder = repo_root / "Translate" / "build_dictionary_room.py"
    sources_dir = (args.sources_dir or (repo_root / "build-dictionary-work" / "sources")).resolve()
    out_dir = (args.out_dir or (repo_root / "android" / "app" / "src" / "main" / "assets" / "databases")).resolve()
    out_dir.mkdir(parents=True, exist_ok=True)

    jobs = [
        ("en", "dictionary_en.db", ["--wordnet", str(sources_dir / "WordNet-3.0.tar.gz")]),
        ("ja", "dictionary_ja.db", ["--jmdict", str(sources_dir / "JMdict.gz")]),
        ("zh", "dictionary_zh.db", ["--cedict", str(sources_dir / "cedict_ts.u8.gz")]),
        ("ru", "dictionary_ru.db", ["--kaikki-ru", str(sources_dir / "ruwiktionary.jsonl.gz")]),
        ("ko", "dictionary_ko.db", ["--kaikki-ko", str(sources_dir / "kowiktionary.jsonl.gz")]),
        ("fr", "dictionary_fr.db", ["--kaikki", f"fr:{sources_dir / 'frwiktionary.jsonl.gz'}"]),
        ("it", "dictionary_it.db", ["--kaikki", f"it:{sources_dir / 'itwiktionary.jsonl.gz'}"]),
        ("pl", "dictionary_pl.db", ["--kaikki", f"pl:{sources_dir / 'plwiktionary.jsonl.gz'}"]),
        ("tr", "dictionary_tr.db", ["--kaikki", f"tr:{sources_dir / 'trwiktionary.jsonl.gz'}"]),
        ("pt", "dictionary_pt.db", ["--kaikki", f"pt:{sources_dir / 'ptwiktionary.jsonl.gz'}"]),
    ]

    for language, filename, extra_args in jobs:
        output = out_dir / filename
        command = [
            sys.executable,
            str(builder),
            "--no-download-missing",
            "--out",
            str(output),
            *extra_args,
        ]
        print(f"=== Building {language} -> {output} ===")
        subprocess.run(command, check=True, cwd=repo_root)

        gzip_output = output.with_suffix(".dbpack")
        print(f"=== Compressing {output.name} -> {gzip_output.name} ===")
        with output.open("rb") as src, gzip.open(gzip_output, "wb", compresslevel=9) as dst:
            while True:
                chunk = src.read(1024 * 1024)
                if not chunk:
                    break
                dst.write(chunk)

        if not args.keep_raw_db:
            output.unlink()

    if args.clean_monolith:
        monolith = out_dir / "dictionary.db"
        if monolith.exists():
            monolith.unlink()
            print(f"Removed old monolithic asset: {monolith}")

    print("=== Shipped per-language dictionary asset set is ready ===")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
