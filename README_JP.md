# Touchie

奇数サイズ等の画像を探し出すためのコマンドラインツールです。

## インストール

#### 1. Rubyのインストール

Ruby 1.8.7以上をインストールして下さい。

#### 2. touchieのインストール

コンソールで以下のコマンドを実行して下さい。

```bash
$ gem install touchie
```

## 使い方

### 奇数サイズの画像を探し出す

```bash
touchie odd 画像のパス
```

#### 例

./hogeディレクトリ直下のpngファイルの中から探す。

```bash
touchie odd ./hoge/*.png
```

./hogeディレクトリ以下にある、全てのpng / jpeg / jpgファイルの中から探す。

```bash
touchie odd ./hoge/**/*.{png,jpeg,jpg}
```

ワイルドカードの規則については、[こちら](http://docs.ruby-lang.org/ja/1.9.3/method/Dir/s/glob.html)を参照して下さい。
