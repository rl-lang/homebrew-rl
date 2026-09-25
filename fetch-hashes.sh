#!/usr/bin/env bash
# Refresh the formula sha256 from the source tarball.
# Usage: ./fetch-hashes.sh 2.3.0
# Run AFTER ./bump.sh <version>.
set -euo pipefail
cd "$(dirname "$0")"
ver="${1:?usage: ./fetch-hashes.sh <version>}"

hex="$(curl -fsSL "https://github.com/rl-lang/rl-lang/archive/refs/tags/v$ver.tar.gz" | sha256sum | awk '{print $1}')"
sed -i "s|^  sha256 .*|  sha256 \"$hex\"|" Formula/rl-lang.rb
echo "fetch-hashes: src $hex"
./bump.sh --check
