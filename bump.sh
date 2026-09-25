#!/usr/bin/env bash
# Bump the Homebrew formula to a new rl-lang version.
# Usage: ./bump.sh 2.3.0
set -euo pipefail
cd "$(dirname "$0")"

if [ "${1:-}" = "--check" ]; then
  grep -m1 '^  url ' Formula/rl-lang.rb | sed 's/.*\/v//;s/\.tar\.gz"//'
  exit 0
fi

ver="${1:?usage: ./bump.sh <version> | --check}"
sed -i "s|archive/refs/tags/v.*\.tar\.gz|archive/refs/tags/v$ver.tar.gz|" Formula/rl-lang.rb
echo "bump: updated to $ver (remember the real sha256)"
