# Findings

- The master backlog ranks characterization contracts before major reader-file moves.
- Existing previous slices already extracted page-count retry, chrome inset, section
  paging and text-layout fingerprint policies. The next extraction must not duplicate them.
- `ReaderViewModel`, `ReaderScreen` and `EpubFormatReader` remain large enough that
  isolated pure policies are the preferred first step.
- Selected first seam: `normalizeReaderAnchorHref`, candidate generation and anchor
  recognition for footnotes. They are deterministic, have no Android dependency and
  currently sit beside WebView navigation in `ReaderViewModel`.
- Next seam is ready but deferred until the current slice is green: identical HTML-to-
  plain-text cleanup is duplicated by `showFootnotePopup` and `showInlineFootnote`.
  It can become `ReaderFootnotePopupPolicy` with behavior-preserving tests.
