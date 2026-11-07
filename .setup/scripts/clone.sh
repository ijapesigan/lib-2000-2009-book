#!/bin/bash

# stop at the first error: a failed clone must not go on to remove .git
set -Eeuo pipefail

# the SSH host: github-<owner> when ~/.ssh/config defines that alias (for
# example on Roar), else github.com
host="github.com"
if grep -Eqs "^Host[[:space:]]+(.*[[:space:]])?github-ijapesigan([[:space:]]|$)" ~/.ssh/config; then
  host="github-ijapesigan"
fi
git clone "git@${host}:ijapesigan/lib-2000-2009-book.git"
rm -rf "$PWD/.git"
mv "lib-2000-2009-book/.git" "$PWD"
rm -rf "lib-2000-2009-book"
