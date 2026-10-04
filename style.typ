// OSMFJ パンフレット 共通スタイル
//
// 仕上がり 297 × 106.1 mm、4 面 W 折り（1 面 74.25 mm）。
// 座標はすべて仕上がり（トリム）左上を原点とする mm。
//
// トンボ付きで出力する場合:
//   typst compile --input marks=true front.typ

#let marks = sys.inputs.at("marks", default: "false") == "true"

#let trim-w = 297mm
#let trim-h = 106.09mm
#let panel-w = trim-w / 4
#let bleed = 3mm
// トンボ用の余白（トンボなしのときは 0）
#let slug = if marks { 15mm } else { 0mm }

// ---- 色 ----
#let ink = rgb("#231f20")
#let osm-green = rgb("#00a84f")
#let leaf-green = rgb("#80c341")
#let panel-green = rgb("#afd46c")
#let label-green = rgb("#d0e4a4")
#let tag-green = rgb("#547f45")
#let sun-yellow = rgb("#ffcb20")
#let gd-gray = rgb("#58595b")
#let wheel-brown = rgb("#6a3c43")

// ---- フォント ----
// 欧文は Helvetica Neue、和文はヒラギノ角ゴ（なければ Noto Sans CJK JP）
#let sans = ("Helvetica Neue", "Hiragino Sans", "Noto Sans CJK JP")
#let w-regular = 300
#let w-bold = 600
#let w-heavy = 800

// ---- トンボ ----
#let crop-marks() = {
  let s = 0.3pt + black
  let len = 10mm
  let L = slug
  let T = slug
  let R = slug + trim-w
  let B = slug + trim-h
  // 角トンボ（内側: 仕上がり線、外側: 塗り足し線）
  for (x, y, sx, sy) in ((L, T, -1, -1), (R, T, 1, -1), (L, B, -1, 1), (R, B, 1, 1)) {
    // 仕上がり位置の線
    place(line(start: (x + sx * bleed, y), end: (x + sx * (bleed + len), y), stroke: s))
    place(line(start: (x, y + sy * bleed), end: (x, y + sy * (bleed + len)), stroke: s))
    // 塗り足し位置の線
    place(line(start: (x + sx * bleed, y + sy * bleed), end: (x + sx * (bleed + len), y + sy * bleed), stroke: s))
    place(line(start: (x + sx * bleed, y + sy * bleed), end: (x + sx * bleed, y + sy * (bleed + len)), stroke: s))
  }
  // センタートンボ
  let cx = slug + trim-w / 2
  let cy = slug + trim-h / 2
  for (y, d) in ((T - bleed, -1), (B + bleed, 1)) {
    place(line(start: (cx - 12mm, y + d * 3mm), end: (cx + 12mm, y + d * 3mm), stroke: s))
    place(line(start: (cx, y), end: (cx, y + d * 10mm), stroke: s))
  }
  for (x, d) in ((L - bleed, -1), (R + bleed, 1)) {
    place(line(start: (x + d * 3mm, cy - 12mm), end: (x + d * 3mm, cy + 12mm), stroke: s))
    place(line(start: (x, cy), end: (x + d * 10mm, cy), stroke: s))
  }
  // 折りトンボ（中央はセンタートンボと兼用）
  let fs = 0.25pt + ink
  for i in (1, 3) {
    let x = slug + panel-w * i
    place(line(start: (x, T - bleed - 6mm), end: (x, T - bleed), stroke: fs))
    place(line(start: (x, B + bleed), end: (x, B + bleed + 6mm), stroke: fs))
  }
}

// ---- ページ ----
#let booklet(body) = {
  set page(
    width: trim-w + 2 * slug,
    height: trim-h + 2 * slug,
    margin: slug,
    background: if marks { crop-marks() },
  )
  set text(font: sans, weight: w-regular, lang: "ja", fill: ink, top-edge: 0.88em, bottom-edge: -0.12em, cjk-latin-spacing: none, features: ("halt",))
  set par(justify: true, spacing: 0pt)
  body
}

// ---- 配置ヘルパー ----

// トリム左上からの絶対配置
#let at(x, y, body) = place(top + left, dx: x, dy: y, body)

// 画像 path を (ix, iy) に iw × ih で置き、(cx, cy, cw, ch) で切り抜く。
// 高さも指定しないと、画像が切り抜き枠に収まるよう縮小されてしまう
#let clipped(path, ix, iy, iw, ih, cx, cy, cw, ch) = at(cx, cy, box(
  width: cw,
  height: ch,
  clip: true,
  place(top + left, dx: ix - cx, dy: iy - cy, image(path, width: iw, height: ih)),
))

// 本文ブロック。size は文字サイズ、pitch は行送り、gap は段落間に足す余白
#let textblock(width, size: 7pt, pitch: 10pt, gap: 0mm, body) = block(width: width, {
  set text(size: size)
  set par(leading: pitch - size, spacing: pitch - size + gap)
  body
})

// 白い角丸の見出し帯
#let heading-bar(width, body) = box(
  width: width,
  height: 5.12mm,
  radius: 2.2mm,
  fill: white,
  inset: (x: 1.6mm),
  align(horizon, text(size: 8.7pt, weight: w-bold, body)),
)
