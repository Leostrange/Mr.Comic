# Progress

## 2026-07-17

- Created the stability-refactor plan from the root master backlog.
- Next: map candidate pure functions and select one thin vertical slice.
- Selected and implemented the first slice: `ReaderFootnoteAnchorPolicy` owns bridge
  normalization, lookup candidates and note-anchor recognition. `ReaderViewModel`
  delegates these pure decisions and retains navigation/popup orchestration.
- Added explicit ARC-001..ARC-004 subtask order to the root master backlog. The
  first extraction maps to ARC-001c / ARC-002a.
- `ReaderFootnoteAnchorPolicyTest` passed: 3 tests, 0 failures, 0 errors.
- Starting ARC-002b: shared popup-text normalization.
- ARC-002b complete: `ReaderFootnotePopupPolicyTest` passed (2 tests, no failures
  or errors); `ReaderViewModel` delegates popup text cleanup to the policy.
- ARC-002c complete: `ReaderNavigationPolicy` owns page clamping, dual-spread
  alignment, visible-page selection and movement step. The established
  `TextReaderNavigation` seam remains responsible for engine/display mappings.
  `ReaderNavigationPolicyTest` passed (4 tests, no failures or errors).
- ARC-002d complete: `ReaderProgressPolicy` centralizes persistence eligibility
  and completion guards, preventing unmeasured EPUB and placeholder heavy-text
  progress from becoming a false completion. `ReaderProgressPersistencePolicyTest`
  passed (4 tests, no failures or errors).
- Next: ARC-003a, pure note-panel available-height policy followed by device QA.
- ARC-003a policy slice complete: `ReaderNotePanelHeightPolicy` limits the
  scrollable note body using screen height, system insets and reserved chrome.
  The component receives the real status/navigation insets and reader chrome
  reservation. `ReaderNotePanelHeightPolicyTest` passed (3 tests) and
  `ReaderChromeComponentsTest` passed (2 tests), both without failures/errors.
- Still open: install the resulting APK and capture the API 36 long-footnote
  peek/expand/scroll/collapse evidence with hidden and visible chrome.
