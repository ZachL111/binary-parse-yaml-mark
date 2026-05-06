# Binary Parse YAML Mark Walkthrough

This note is the quickest way to read the extra review model in `binary-parse-yaml-mark`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 215 | ship |
| stress | grammar width | 204 | ship |
| edge | label quality | 194 | ship |
| recovery | error locality | 234 | ship |
| stale | token drift | 182 | ship |

Start with `recovery` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around grammar width and error locality.
