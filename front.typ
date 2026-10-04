// 表面（外側）: 01_OSMFJパンフレット2016表_増刷2.ai
// 左から「参加案内」「地図（2 面分）」「表紙」。W 折りの表紙は右端の面。
#import "style.typ": *

#show: booklet

// ============ 1 面目: 参加案内 ============

#at(4.6mm, 7.2mm, text(size: 10.6pt, weight: w-heavy, fill: osm-green)[OpenStreetMap に参加しませんか？])

#at(4.8mm, 13.2mm, {
  set text(size: 9.6pt, weight: 400)
  set par(leading: 4.58mm - 9.6pt, justify: false)
  [https://www.openstreetmap.org/ #text(size: 6.4pt)[（本家サイト）]] + linebreak()
  [https://osm.jp/ #text(size: 6.4pt)[（日本コミュニティサイト）]]
})

#at(17.01mm, 24.05mm, image("image/osm-banner.jpg", width: 41.82mm))

#at(4.8mm, 42.1mm, textblock(66.9mm, size: 6.7pt, pitch: 3.43mm, gap: 0.62mm)[
  本家のWebサイトへアクセスしていただければ、誰でも気軽に地図データの編集にご参加いただけます。日本のコミュニティサイトでは国内でのイベント紹介や、フォーラム、メーリングリスト等の情報がまとめられています。

  #set par(hanging-indent: 1em)
  ■マッピングに興味を持たれた方は、全国各地で不定期に開催されているマッピングパーティや勉強会へお気軽にご参加ください。ウェブサイトやメーリングリストで随時ご案内しております。

  ■日本のマッピング活動の主体はOpenStreetMap JAPANですが、後方支援を行う組織として一般社団法人オープンストリートマップ・ファウンデーション・ジャパン（osmf.jp）がコミュニティ支援や、イギリスOSM Foundationとの窓口を行っています。

  ■OpenStreetMap の地図データは、Open Database License（ODbL）で提供されます。ライセンスの詳細については、#box[www.openstreetmap.org/copyright] をご確認ください。
])

// ============ 2・3 面目: 地図 ============

#clipped("image/front-map.jpg", 75.95mm, -14.85mm, 149.87mm, 119.90mm, 77.06mm, 7.48mm, 143.12mm, 71.57mm)

#at(78.59mm, 8.96mm, block(
  width: 67.18mm,
  height: 9.99mm,
  fill: white.transparentize(30%),
  inset: (left: 0.6mm, top: 0.5mm),
  {
    set text(size: 6.6pt)
    set par(leading: 3.13mm - 6.6pt, justify: false)
    [本印刷物の地図はすべて、OpenStreetMapのデータを使い \ オープンソースソフトウエアによって作成したものです。 \ 用途に応じてさまざまなサポートツールが存在します。]
  },
))

#at(77.06mm, 79.4mm, box(width: 143.12mm, align(right, text(size: 4.6pt, font: ("Helvetica",) + sans)[©OpenStreetMap contributors])))

// グッドデザイン賞
// ※元データの表記「OpenSteetMap」（Street の r 抜け）をそのまま残している
#at(76.7mm, 81.75mm, text(size: 6.5pt, weight: w-bold, fill: gd-gray)[■ OpenSteetMapは2014年度グッドデザイン賞を受賞しました！])
#at(76.7mm, 85.38mm, line(length: 68.7mm, stroke: 0.25pt + ink))
#at(73.46mm, 84.87mm, image("image/good-design.jpg", width: 34.71mm))
#at(108.0mm, 87.3mm, {
  set text(size: 5.3pt)
  set par(leading: 2.88mm - 5.3pt, justify: false)
  [「誰もが自由に地図づくりへ参加でき利用 \ できる」というコンセプトが \ 「良いデザイン」として認められ、2014年度に \ グッドデザイン賞を受賞しました。]
})

// 空欄の枠（スタンプ・連絡先記入用）
#at(150.96mm, 82.2mm, rect(width: 69.32mm, height: 16.63mm, stroke: 0.5pt + ink))

// ============ 4 面目: 表紙 ============

// 3 × 4 のタイル（3 段目はロゴ用の白）
#at(229.77mm, 9.35mm, rect(width: 20mm, height: 20mm, fill: rgb("#b9c147")))
#clipped("image/cover-sky.jpg", 245.75mm, 9.02mm, 27.39mm, 20.52mm, 249.77mm, 9.35mm, 20mm, 20mm)
#at(269.77mm, 9.35mm, rect(width: 20mm, height: 20mm, fill: rgb("#a3cf62")))

#clipped("image/cover-city.jpg", 227.53mm, 29.28mm, 35.56mm, 19.98mm, 229.77mm, 29.35mm, 20mm, 20mm)
#at(249.77mm, 29.35mm, rect(width: 20mm, height: 20mm, fill: rgb("#00ab4e")))
#clipped("image/cover-coast.jpg", 263.09mm, 29.40mm, 26.67mm, 19.98mm, 269.77mm, 29.35mm, 20mm, 20mm)

#clipped("image/cover-night.jpg", 227.53mm, 68.76mm, 27.09mm, 20.30mm, 229.77mm, 69.23mm, 20mm, 20mm)
#clipped("image/cover-signs.jpg", 246.39mm, 53.52mm, 34.69mm, 46.31mm, 249.77mm, 69.23mm, 20mm, 20mm)
#clipped("image/cover-street.jpg", 266.14mm, 69.01mm, 32.82mm, 24.57mm, 269.77mm, 69.23mm, 20mm, 20mm)

#at(229.77mm, 9.35mm, image("image/cover-heart.svg", width: 20mm))
#at(249.77mm, 8.41mm, image("image/cover-route.svg", width: 40.0mm))
#at(252.11mm, 32.60mm, image("image/mapper-front.svg", width: 5.645mm))
#at(258.98mm, 36.74mm, image("image/osm-magnifier.png", width: 14.90mm))
#at(231.29mm, 53.07mm, image("image/osm-wordmark.svg", width: 56.80mm))

#at(222.75mm, 91.6mm, box(width: panel-w, align(center, text(size: 10pt, fill: tag-green)[自由な地図をみんなの手で！])))
