# Third-Party Dictionaries

`Mr.Comic` now bundles a small offline dictionary layer generated from `FreeDict` source releases.

## Source

- Project: `FreeDict`
- Upstream database: [https://freedict.org/freedict-database.json](https://freedict.org/freedict-database.json)
- Current bundled source family: `FreeDict + WikDict / Wiktionary-derived bilingual dictionaries`
- License for the bundled dictionary data: `CC BY-SA 3.0`

## Bundled pairs

- `en-ru`
- `ru-en`
- `en-ja`
- `ja-en`
- `ja-ru`
- `en-zh`
- `zh-ru`

## Asset location

- Generated dictionary assets:
  - `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\assets\dictionaries\freedict`
- Attribution and license copies:
  - `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\assets\dictionaries\freedict\ATTRIBUTION.md`
  - `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\assets\dictionaries\freedict\COPYING-FreeDict-CC-BY-SA-3.0.txt`

## Regeneration

To re-download and rebuild the bundled TSV assets:

```powershell
python C:\Users\xmeta\projects\Mr.Comic\scripts\import_freedict.py
```

## Notes

- The current MVP dictionary uses bundled FreeDict data first.
- If a word is missing in the bundled pair, the app falls back to the existing translation-backed quick lookup.
- A Korean pair is not bundled yet because a matching FreeDict pair was not available in the current selected source set.

## Room Prepackaged Dictionary Assets

`Mr.Comic` now also includes a Room-compatible prepackaged SQLite dictionary set:

- assets:
  - `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\assets\databases\dictionary_en.dbpack`
  - `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\assets\databases\dictionary_fr.dbpack`
  - `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\assets\databases\dictionary_it.dbpack`
  - `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\assets\databases\dictionary_ja.dbpack`
  - `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\assets\databases\dictionary_ko.dbpack`
  - `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\assets\databases\dictionary_pl.dbpack`
  - `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\assets\databases\dictionary_pt.dbpack`
  - `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\assets\databases\dictionary_ru.dbpack`
  - `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\assets\databases\dictionary_tr.dbpack`
  - `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\assets\databases\dictionary_zh.dbpack`
- builder:
  - `C:\Users\xmeta\projects\Mr.Comic\Translate\build_dictionary_room.py`
  - `C:\Users\xmeta\projects\Mr.Comic\Translate\build_dictionary_shipped_assets.py`

### Current staged sources in the shipped Room asset set

- `Princeton WordNet 3.0`
- `JMdict`
- `CC-CEDICT`
- `Kaikki RU`
- `Kaikki KO`
- `Kaikki FR`
- `Kaikki IT`
- `Kaikki PL`
- `Kaikki TR`
- `Kaikki PT`

### Notes

- This Room asset set is now staged for richer lookup data across:
  `EN / JA / ZH / RU / KO / FR / IT / PL / TR / PT`.
- The runtime language catalog and the shipped Room assets are now aligned for the current expanded wave from `Ocr update`.
- It is used as the primary source for:
  - lemma
  - part of speech
  - senses / glosses
  - readings
  - examples
- Runtime opens the matching Room DB lazily by source language instead of mounting one monolithic dictionary database.
- At runtime each `.dbpack` asset is unpacked once into `filesDir/dictionary_assets/` and then opened through Room via `createFromFile(...)`.
- If the Room DB does not contain a suitable target-language translation, the app falls back to:
  - bundled `FreeDict` pairs
  - then the existing translation-backed lookup path
- The packaged DB is built to match the exported Room schema exactly, including `room_master_table` and the current `identity_hash`, so `createFromAsset()` validation succeeds at runtime.
- The current packaged asset set is large:
  - raw per-language SQLite set was about `2.53 GB`
  - the shipped compressed `.dbpack` set is about `752 MB`
  - `dictionary_fr.dbpack` is the largest single asset at about `326 MB`
  - this keeps APK packaging working and reduces APK size substantially while preserving offline coverage

### Extended builders

The project root now also contains the imported builder/update materials from `Ocr update`:

- `C:\Users\xmeta\projects\Mr.Comic\Translate\build_dictionary_full.py`
- `C:\Users\xmeta\projects\Mr.Comic\Translate\README_build_dictionary_full.md`
- `C:\Users\xmeta\projects\Mr.Comic\Translate\dictionary_optimization_guide.md`
- `C:\Users\xmeta\projects\Mr.Comic\Translate\updated_TZ.md`

The Room-compatible builder still accepts extra Kaikki sources in repeatable form:

```powershell
python C:\Users\xmeta\projects\Mr.Comic\Translate\build_dictionary_room.py `
  --out C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\assets\databases\dictionary_fr.db `
  --kaikki fr:https://kaikki.org/frwiktionary/raw-wiktextract-data.jsonl.gz `
  --kaikki it:https://kaikki.org/itwiktionary/raw-wiktextract-data.jsonl.gz
```

And the shipped-set helper now builds the full per-language asset pack in one go:

```powershell
python C:\Users\xmeta\projects\Mr.Comic\Translate\build_dictionary_shipped_assets.py --clean-monolith
```

This helper now builds the full per-language asset pack and stores each database in precompressed `gzip` form under the custom `.dbpack` extension.

### Upstream references

- WordNet: [https://wordnet.princeton.edu/](https://wordnet.princeton.edu/)
- JMdict / EDRDG: [https://www.edrdg.org/jmwsgi/entr.py?svc=jmdict&sid=](https://www.edrdg.org/jmwsgi/entr.py?svc=jmdict&sid=)
- CC-CEDICT: [https://cc-cedict.org/wiki/](https://cc-cedict.org/wiki/)
