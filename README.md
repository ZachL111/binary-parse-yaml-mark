# binary-parse-yaml-mark

`binary-parse-yaml-mark` treats parsers as a local verification problem. The Ruby implementation is intentionally narrow, but the fixtures and notes make the behavior explicit.

## Binary Parse YAML Mark Checkpoints

Treat the compact fixture as the contract and the extended examples as a scratchpad. The code should stay boring enough that a change in behavior is obvious from the test output.

## Architecture Notes

The interesting part is the boundary between accepted and reviewed scenarios. Extended examples sit near that boundary so future edits can show whether the model became more permissive or more cautious. The Ruby code keeps the module small and leans on Minitest for direct fixture checks.

## What This Is For

The repository exists to keep a technical idea small enough to reason about. The implementation avoids external dependencies where possible, then uses fixtures to make changes easy to review.

## Useful Pieces

- Uses fixture data to keep error labels changes visible in code review.
- Includes extended examples for grammar boundaries, including `surge` and `degraded`.
- Documents golden examples tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.

## Case Study

`examples/extended_cases.csv` adds six named cases. I kept the names plain so failures are easy to read in a terminal: baseline, pressure, surge, degraded, recovery, and boundary.

## Project Layout

- `lib`: library code
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Tooling

The only required setup is the local Ruby toolchain. After cloning, stay in the repo root so fixture paths resolve correctly.

## Local Workflow

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Quality Gate

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Scope

The repository favors determinism over breadth. It does not pull live data, keep secrets, or depend on network access for verification.

## Expansion Ideas

- Split the scoring constants into a typed configuration object and validate it before use.
- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add one more parsers fixture that focuses on a malformed or borderline input.
