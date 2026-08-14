# Long note

This markdown fixture contains a very long single section used to verify that closing the reader
mid-chapter restores the exact paragraph (TEXT-02/03 regression) and that the paged layout never
reports a false 100% from the last index alone (PROGRESS-01 regression).

Paragraph one with a footnote reference [1].

Paragraph two keeps the reading position tests honest: the section must paginate into many visual
sub-pages so that switching between PAGE and WEBTOON mid-document preserves the sub-page anchor
(TEXT-04 regression) instead of sending the reader back to the beginning of the section.

[1]: A footnote that must remain tappable near the viewport edge.
