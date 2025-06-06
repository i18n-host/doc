#!/usr/bin/env bash

DIR=$(realpath $0) && DIR=${DIR%/*}
cd $DIR
set -ex

cd $DIR

if [ -d ".git" ]; then
  cd ..
else
  mkdir -p i18n.host
  cd i18n.host
fi

bun_i() {
  if ! command -v $(basename $1) &>/dev/null; then
    bun i -g $1
  fi
}

clone() {
  for i in "$@"; do
    if [ -d "$i" ]; then
      cd $i
      git add . && git commit -m "." || true
      git pull || true
      git push
    else
      git clone --depth 1 --no-single-branch ssh://git@ssh.github.com:443/i18n-host/$i.git
      cd $i
      git fetch origin dev --depth 1
      git checkout -b dev origin/dev
      [ -f .mise.toml ] && mise trust || true
      fd package.json -x bash -c 'cd $(dirname {}) && bun i'
    fi
    cd ..
  done
}

clone com srv hpc css mod doc
