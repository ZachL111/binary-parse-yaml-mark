# binary-parse-yaml-mark

`binary-parse-yaml-mark` keeps a focused Ruby implementation around parsers. The project goal is to implement a Ruby parsers project for yaml diagnostic reporting, using negative fixtures and human-readable error snapshots.

## Use Case

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Binary Parse YAML Mark Review Notes

For a quick review, compare `error locality` with `token drift` before reading the middle cases.

## Highlights

- `fixtures/domain_review.csv` adds cases for token drift and grammar width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/binary-parse-yaml-walkthrough.md` walks through the case spread.
- The Ruby code includes a review path for `error locality` and `token drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Ruby code keeps the review rule close to the tests.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

The check exercises the source code and the review fixture. `recovery` is the high score at 234; `stale` is the low score at 182.

## Future Work

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
