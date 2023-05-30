#!/usr/bin/env bash

set -e

clean_dist() {
  cd $dist_dir
  rm -rf _site
}

build_dist() {
  cd $src_dir
  echo "=> Building..."
  sh $src_dir/bin/build.sh
  echo ""
  echo "=> Build complete"
}

copy_dist() {
  cp -r $src_dir/_site $dist_dir
}

publish() {
  cd $dist_dir
  echo "=> Publishing..."
  git add .
  git commit -m "update"
  git push origin main
  echo "=> Publish complete"
}

main() {
  local src_dir=$(pwd)
  local dist_dir=$src_dir-dist
  clean_dist
  build_dist
  copy_dist
  publish
  echo "=> Done"
}

main