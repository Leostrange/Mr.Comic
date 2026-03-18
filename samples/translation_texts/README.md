# Translation Test Samples

Compact sample texts for dictionary / translation checks in `Mr.Comic`.

Languages:
- `en` English
- `fr` French
- `ru` Russian
- `ja` Japanese

Source corpus:
- Universal Declaration of Human Rights (UDHR) corpus by Aalto University:
  https://research.ics.aalto.fi/cog/data/udhr/
- The Aalto page states the original PDFs were retrieved from OHCHR and asks users to reference the OHCHR website as the source.

Direct source files used:
- English: https://research.ics.aalto.fi/cog/data/udhr/txt/eng.txt
- French: https://research.ics.aalto.fi/cog/data/udhr/txt/frn.txt
- Russian: https://research.ics.aalto.fi/cog/data/udhr/txt/rus.txt
- Japanese: https://research.ics.aalto.fi/cog/data/udhr/txt/jpn.txt

Preparation:
- downloaded on 2026-03-18
- each local file is a compact excerpt from the beginning of the source text
- saved as UTF-8 for quick manual testing in the reader / dictionary / translation flows


Additional languages added on 2026-03-18 from the UDHR txt archive:
- Italian: `udhr/txt/itn.txt`
- Polish: `udhr/txt/plu.txt`
- Turkish: `udhr/txt/trk.txt`
- Portuguese: `udhr/txt/por.txt`
- Korean: `udhr/txt/kon.txt`
- Chinese: `udhr/txt/chn.txt`
Archive source:
- https://research.ics.aalto.fi/cog/data/udhr/udhr_txt_20100325.tar.gz


Korean note:
- the Aalto UDHR txt archive did not provide a correct Korean sample under the expected code path for this test pack
- `ko_udhr_sample.txt` is therefore taken from the Korean UDHR page at:
  https://www.udhr.de/kkn.html
