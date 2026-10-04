// 裏面（内側）: 02_OSMFJパンフレット2016裏_増刷2.ai
// 「私たちの自由な世界地図でもっと面白い、役に立つ。」の見開き 4 面
#import "style.typ": *

#show: booklet

// ============ 背景・タイトル ============

#at(4.52mm, 16.1mm, rect(width: 287.98mm, height: 82.48mm, fill: panel-green))

#at(4.4mm, 7.6mm, text(size: 16pt, weight: w-heavy, fill: leaf-green)[私たちの自由な世界地図 でもっと面白い、役に立つ。])

#at(202.36mm, 5.06mm, image("image/mapper-route.svg", width: 96.66mm))

// ============ 1 面目 ============

#at(7.03mm, 18.5mm, heading-bar(65.47mm)[◎自由に利用でき、簡単に編集ができる地図])

#at(7.1mm, 25.25mm, textblock(64.6mm, size: 6.65pt, pitch: 3.53mm)[
  世の中には有償無償に関わらずさまざまな地図媒体や地図サービスが存在し、私たちの生活のいろいろな場面で活躍しています。しかし、ほとんどの場合は無断複製や改変が禁止されており、利用者は地図データに手を加えることができません。

  #text(weight: w-bold, fill: white)[OpenStreetMap（OSM）は世界中の参加者が地図データを追加・編集しあいながら発展させることを目的としているため、自由度の高いライセンス形態になっています。]　サイクリングやウォーキングを趣味にしている方が、既存の地図では見つけにくい休憩ポイントやおもしろいルートを知っているかもしれません。また、地形や歴史に詳しい方が今まで注目されなかったすてきなランドマークを知っているかもしれません。OpenStreetMapはそんな情報を地図データとして書き込み、共有することができるプロジェクトです。
])

#at(7.03mm, 72.37mm, heading-bar(65.47mm)[◎自由な地図で新たなイノベーション])

#at(7.1mm, 79.05mm, textblock(64.6mm, size: 6.65pt, pitch: 3.53mm)[
  地図データにはバスの路線情報・道路の制限速度・お店の営業時間などさまざまな情報を付加することができ、世界各地で日々アップデートされています。これらの情報を共有し活用することで、既存の地図では実現できない新たなイノベーションを作り出すことも可能です。
])

// ============ 2 面目 ============

#clipped("image/photo-survey.jpg", 75.40mm, 17.76mm, 25.32mm, 18.97mm, 76.87mm, 18.61mm, 23mm, 17.50mm)
#clipped("image/photo-forest.jpg", 71.46mm, 37.80mm, 35.56mm, 19.98mm, 76.87mm, 38.63mm, 23mm, 17.50mm)
#clipped("image/photo-meeting.jpg", 74.25mm, 58.69mm, 26.44mm, 17.57mm, 76.87mm, 58.65mm, 23mm, 17.48mm)
#clipped("image/photo-workshop.jpg", 74.38mm, 77.20mm, 28.53mm, 18.97mm, 76.87mm, 78.68mm, 23mm, 17.34mm)

#at(102.7mm, 18.85mm, textblock(43.2mm, size: 6.6pt, pitch: 3.52mm)[
  #text(font: ("Helvetica Neue",) + sans, weight: "black", stretch: 75%)[OpenStreetMap]では地図データを編集する人たちのことを「マッパー」、編集することを「マッピング」と呼んでいます。

  マッパーは、お店や公園などの施設情報はもとより、バス停・郵便ポスト・自動販売機・消火器などの位置に至るまでさまざまな情報を集めながら各地を探索していきます。集められた情報はパソコンやスマートフォンを使ってOSMへ入力すると即座に反映し共有されます。地図データの編集はWebブラウザ上で行うこともできるので、誰でも簡単に編集することができるほか、衛星写真を使って建物や道路などを入力することもできます。
])

#at(102.6mm, 69.69mm, rect(
  width: 43.35mm,
  height: 4.51mm,
  fill: label-green,
  stroke: 0.25pt + ink,
  inset: (x: 0.6mm),
  align(horizon, text(size: 6.1pt)[#text(font: ("Helvetica Neue",) + sans, weight: "black", stretch: 75%)[OpenStreetMap]のデータが地図になるまで]),
))

#at(103.2mm, 76.0mm, textblock(43.2mm, size: 6.0pt, pitch: 3.2mm, gap: 0.65mm)[
  #set par(justify: false, hanging-indent: 0.6em)
  ・マッパーが元となるデータを集める \ （GPS・衛星写真・現地調査など）

  ・マッパーが編集アプリを使って地図データを編集

  ・OpenStreetMapの地図データを使ったさまざまなサービスが地図へ画像化
])

// ============ 3 面目 ============

#at(151.0mm, 18.5mm, heading-bar(69.2mm)[◎ 知る楽しみ、コミュニケーション])

#at(148.91mm, 22.25mm, image("image/subtitle-glow.png", width: 53.97mm))
#at(150.0mm, 24.75mm, box(width: 46.2mm, {
  set text(size: 7.6pt, weight: w-bold, fill: white)
  set par(leading: 3.5mm - 7.6pt, justify: false)
  [〜マッピングパーティを通じた] + linebreak()
  align(right)[街の再発見、地域交流〜]
}))

// 写真（影 → 写真の順に重ねる）
#at(155.78mm, 30.29mm, image("image/shadow-cheer.png", width: 38.10mm))
#at(174.495mm - 28.41mm / 2, 45.975mm - 21.28mm / 2, rotate(-10.01deg, image("image/party-cheer.jpg", width: 28.41mm, height: 21.28mm)))
#at(165.00mm, 52.59mm, image("image/shadow-crowd.png", width: 35.28mm))
#clipped("image/party-crowd.jpg", 168.25mm, 55.23mm, 28.53mm, 18.97mm, 168.20mm, 55.20mm, 28.53mm, 18.97mm)
#at(150.86mm, 54.80mm, image("image/stone-marker.png", width: 15.29mm))

// 黄色い円
#at(199.75mm, 20.6mm, circle(radius: 10.46mm, fill: sun-yellow, inset: 0mm, align(center + horizon, {
  set text(size: 7.6pt)
  set par(leading: 3.53mm - 7.6pt, justify: false)
  [土地を知る \ 仲間を知る \ 歴史を知る \ 文化を知る]
})))

#at(198.5mm, 41.3mm, circle(radius: 2.82mm, fill: sun-yellow))
#at(198.5mm, 58.05mm, circle(radius: 2.82mm, fill: sun-yellow))
#at(200.9mm, 42.6mm, textblock(19.5mm, size: 6.3pt, pitch: 3.2mm, gap: 0.95mm)[
  マッピングパーティとは、マッパー同士が集まって共同でマッピングしあうイベントです。

  普段行き慣れた場所でも、テーマを決めて探索していくと新たな発見に出会えます。
])

// ※元データの表記「他言語」をそのまま残している（「多言語」の誤記と思われる）
#at(151.0mm, 77.27mm, heading-bar(69.2mm)[◎容易な他言語活用でインバウンド（観光客）需要])

#at(151.3mm, 83.95mm, textblock(68.8mm, size: 6.45pt, pitch: 3.17mm)[
  地図データは複数の言語を同時に登録することができるので、対応した地図アプリを使えば言語を切り替えて表示することができます。一度データを入力しておけば海外からの観光客向けの地図を容易に作ることが可能です。
])

// ============ 4 面目 ============

#at(225.25mm, 18.5mm, heading-bar(64.74mm)[◎ 福祉、防災対策に活用])

#at(225.4mm, 25.55mm, textblock(64.8mm, size: 6.45pt, pitch: 3.17mm)[
  地図データに情報を付加できる特性を活かし、車いす利用者向けの地図サイト(Wheelmap)で利用されている実績があります。

  また、リアルタイムにデータを反映できるため災害時の地理情報提供ツールとしても活用されています。
])

#clipped("image/wheelmap.jpg", 225.42mm, 40.24mm, 64.78mm, 45.78mm, 225.49mm, 40.19mm, 64.30mm, 45.72mm)

#at(225.5mm, 87.05mm, textblock(64.8mm, size: 6.3pt, pitch: 3.17mm)[
  #set text(weight: w-bold, fill: wheel-brown)
  WheelmapはOpenStreetMapの地物データをもとに車いす利用者が自力で移動できる場所を共有することができます。

  入力された情報は誰でも更新することができます。
])
