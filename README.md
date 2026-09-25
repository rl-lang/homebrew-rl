# homebrew-rl

Homebrew tap for [rl-lang](https://github.com/rl-lang/rl-lang).

## For users

```bash
brew tap rl-lang/rl
brew install rl-lang
```

Ships the full binary set:
`rl`, `rlc`, `rlt`, `rlrepl`, `rlsp`, `rldocs`, `rlm`.

## For maintainers

Bump the version on release day:

```bash
./bump.sh 2.3.0
./fetch-hashes.sh 2.3.0   # refreshes the tarball sha256
./bump.sh --check   # CI runs this
```

Then update `sha256` with the real tarball hash, test with
`brew install --build-from-source Formula/rl-lang.rb`, and push.

## License

MIT or Apache 2.0 at your option.
