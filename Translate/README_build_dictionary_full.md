# README: build_dictionary_full.py

## Поддерживает
- en -> WordNet JSONL
- ja -> JMdict XML/XML.GZ
- zh -> CC-CEDICT
- остальные языки -> Kaikki JSONL/JSONL.GZ

## Языки
- ru, en, ja, ko, zh
- fr, it, pl, tr, pt
- id, th, vi, ms
- hi, bn, ur, fa, ar

## Пример запуска
python build_dictionary_full.py \
  --out-dir ./out \
  --wordnet ./sources/wordnet-en.jsonl \
  --jmdict ./sources/JMdict_e.xml.gz \
  --cedict ./sources/cedict_ts.u8 \
  --kaikki ru:./sources/kaikki-ru.jsonl.gz \
  --kaikki fr:./sources/kaikki-fr.jsonl.gz \
  --kaikki ar:./sources/kaikki-ar.jsonl.gz
