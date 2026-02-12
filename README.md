# firejail-buildscripts

This repository contains CI scripts to build [firejail][] from upstream for
use with [itch-redists][] / broth.

[firejail]: https://github.com/netblue30/firejail
[itch-redists]: https://gitlab.com/itchio/itch-redists

## How it works

CI builds firejail for amd64 and arm64 on tagged pushes. Artifacts are
published to GitHub Releases as `firejail-linux-amd64` and
`firejail-linux-arm64`.

To trigger a build, push a tag matching the upstream firejail version (e.g.
`0.9.72`).

## Deploying to broth

1. Download the binaries from the [GitHub Release](../../releases/latest)
2. Copy them into `itch-redists`:
   - `firejail-linux-amd64` → `data/firejail-amd64/linux/firejail`
   - `firejail-linux-arm64` → `data/firejail-arm64/linux/firejail`
3. Run the itch-redists deploy

## License

firejail is released under the GPL license, see [firejail/COPYING][] for details.

[firejail/COPYING]: https://github.com/netblue30/firejail/blob/master/COPYING
