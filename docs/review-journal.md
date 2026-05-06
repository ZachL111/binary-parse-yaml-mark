# Review Journal

This journal records the domain cases that matter before widening the public API.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 215, lane `ship`
- `stress`: `grammar width`, score 204, lane `ship`
- `edge`: `label quality`, score 194, lane `ship`
- `recovery`: `error locality`, score 234, lane `ship`
- `stale`: `token drift`, score 182, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
