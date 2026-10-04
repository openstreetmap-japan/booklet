#!/bin/sh
# 表面・裏面の PDF とプレビュー用 PNG を html/ に出力する。
# GitHub Actions（.github/workflows/pages.yml）からも呼ばれる。
set -eu

cd "$(dirname "$0")"
out=html

for side in front back; do
  typst compile "$side.typ" "$out/$side.pdf"
  typst compile --input marks=true "$side.typ" "$out/$side-marks.pdf"
  typst compile --ppi 150 "$side.typ" "$out/$side.png"
done

ls -l "$out"
