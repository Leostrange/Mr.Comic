# DjVu renderer research

Updated: 2026-03-20

This note records the current state of DjVu renderer options for `Mr.Comic`.
The app already has:

- format detection and import for `DjVu`
- a safe runtime placeholder path in the reader
- a pluggable `DjvuBackend` contract in `engine-formats`
- placeholder cover generation in the library

What is still missing is a real renderer/decoder that is safe to ship inside the current app.

## What we checked

### 1. DjVuLibre

Source:
- https://djvu.sourceforge.net/

What matters:
- the official project describes DjVuLibre as an open-source `GPL'ed` implementation of DjVu
- the site also says the reference implementation was released under the GNU GPL

Implication for this project:
- this is not a drop-in choice if we want to avoid pulling GPL obligations into the shipped Android app

### 2. DjVu.js

Source:
- https://github.com/RussCoder/djvujs

What matters:
- the repository README says the `DjVu.js Library` is distributed under `GNU GPL v2`
- the same README distinguishes that the rest of the repository (viewer/extension shell) is under `The Unlicense`

Implication for this project:
- the actual rendering library is still GPL-licensed
- wrapping it in WebView would not remove the underlying licensing tradeoff

### 3. SnDjVu

Source:
- https://github.com/sndjvu/workspace

What matters:
- the repository advertises `Apache-2.0` and `MIT`
- the README also says SnDjVu is `still in the early stages of development and is not yet useful`

Implication for this project:
- this is the cleanest-looking licensing direction so far
- but it is not mature enough yet to serve as the production renderer for the app today

## Current conclusion

As of 2026-03-20, we do not have a clearly safe and production-ready DjVu renderer that is:

- suitable for Android integration
- mature enough for multipage reading
- acceptable from a licensing standpoint for the current app distribution model

Because of that, the current app stays on the safe staged approach:

1. detect and import `DjVu`
2. preserve the file in the library
3. show a clear runtime placeholder instead of crashing or pretending the file is broken
4. keep the format path pluggable via `DjvuBackend`
5. generate a library placeholder cover so DjVu entries remain visible and organized

## Recommended next step

The next real implementation step should be one of these:

1. choose an explicit GPL/commercial strategy and then integrate a proven renderer
2. wait for a permissive renderer such as SnDjVu to become practically usable
3. build an isolated optional backend module once a safe renderer exists

Until then, the app should treat `DjVu` as a supported import format with a safe placeholder runtime, not as a fully rendered reading format.
