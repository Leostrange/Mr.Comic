# Offline dictionary build pipeline

This script builds an offline SQLite dictionary for an Android reader app.

It imports:
- Princeton WordNet 3.0 (English meanings)
- JMdict (Japanese)
- CC-CEDICT (Chinese)
- Kaikki ruwiktionary dump (Russian)
- Kaikki kowiktionary dump (Korean)

## Files
- `build_dictionary.py` - the builder script

## Basic usage

Build one combined database:

```bash
python build_dictionary.py --out ./dictionary.db
```

Build one database per language:

```bash
python build_dictionary.py --split --out ./out-dbs
```

Use local source files and do not download anything:

```bash
python build_dictionary.py \
  --no-download-missing \
  --wordnet ./sources/WordNet-3.0.tar.gz \
  --jmdict ./sources/JMdict.gz \
  --cedict ./sources/cedict_ts.u8.gz \
  --kaikki-ru ./sources/ruwiktionary.jsonl.gz \
  --kaikki-ko ./sources/kowiktionary.jsonl.gz \
  --out ./dictionary.db
```

Import only a small sample for testing:

```bash
python build_dictionary.py --limit 500 --out ./dictionary.db
```

## Output schema

Tables:
- `entries`
- `forms`
- `senses`
- `translations`
- `readings`
- `examples`

Main runtime lookup pattern:
1. normalize tapped token
2. search `forms.normalized_form`
3. join to `entries`
4. fetch `senses`, `translations`, `readings`, `examples`

## Notes

- WordNet gives strong English meanings, but not bilingual translations.
- JMdict and CC-CEDICT mostly give English glosses/translations.
- Kaikki shape can vary slightly over time; the parser is intentionally defensive.
- For English-to-Russian translations, add an extra English bilingual source later if needed.
