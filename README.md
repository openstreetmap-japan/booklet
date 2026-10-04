# OSMFJ パンフレット（Typst 版）

OSMFJ パンフレット 2016（増刷 2）の入稿データ（Illustrator ファイル）を Typst で書き直したものです。

- 仕上がりサイズ: 297 × 106.1 mm
- 折り: 4 面の W 折り（1 面 74.25 mm）。表紙は表面の右端の面

## ファイル構成

| ファイル | 内容 |
|---|---|
| `front.typ` | 表面（外側）。元データは `01_OSMFJパンフレット2016表_増刷2.ai` |
| `back.typ` | 裏面（内側）。元データは `02_OSMFJパンフレット2016裏_増刷2.ai` |
| `style.typ` | 共通設定（ページサイズ、色、フォント、トンボ、配置用のヘルパー） |
| `image/` | 写真・地図・ロゴ・イラスト |
| `html/index.html` | GitHub Pages で公開するプレビューページ |
| `build.sh` | PDF とプレビュー画像をまとめて `html/` に出力するスクリプト |
| `.github/workflows/pages.yml` | ビルドして GitHub Pages に公開するワークフロー |

## 必要なもの

- [Typst](https://typst.app/) 0.15 以降
- フォント
  - ヒラギノ角ゴシック（Hiragino Sans）: macOS に標準で入っています。ない環境では Noto Sans CJK JP が使われます
  - Helvetica Neue: 欧文に使います

使えるフォントは `typst fonts` で確認できます。

## ビルド方法

### まとめてビルドする

PDF 4 つ（表面・裏面 × トンボの有無）とプレビュー用の PNG を `html/` に出力します。

```sh
./build.sh
```

`html/index.html` をブラウザで開くと、公開されるページと同じものを確認できます。

### 画面表示・PDF 配布用（トンボなし）

仕上がりサイズの PDF を作ります。

```sh
typst compile front.typ   # → front.pdf
typst compile back.typ    # → back.pdf
```

### 印刷入稿用（トンボあり）

塗り足し 3 mm とトンボ（角トンボ、センタートンボ、折りトンボ）を付けた PDF を作ります。

```sh
typst compile --input marks=true front.typ front-marks.pdf
typst compile --input marks=true back.typ back-marks.pdf
```

### 編集しながら確認する

`watch` を使うと、ファイルを保存するたびに PDF を作り直します。

```sh
typst watch front.typ
```

### PNG で確認する

```sh
typst compile --ppi 200 front.typ front.png
```

## 公開（GitHub Pages）

`main` に push すると、GitHub Actions が `build.sh` を実行して `html/` を GitHub Pages に公開します。Actions の画面から手動で実行することもできます（workflow_dispatch）。

- 公開先: https://openstreetmap.jp/booklet/
- ヒラギノ角ゴと Helvetica Neue を使うため、ビルドは macOS のランナーで行います
- PDF と PNG はビルドで作るので、リポジトリには入れていません（`.gitignore` で除外）

## 補足

- 座標はすべて、仕上がり（トリム）の左上を原点とする mm で指定しています
- 画像は元データの CMYK から RGB に変換しています。入稿先が CMYK を求める場合は、印刷所に相談してください
