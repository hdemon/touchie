# Touchy

奇数サイズ等の画像を探し、修正するためのコマンドラインツールです。

## インストール

1 . Ruby 1.8.7以上をインストールする

2 . ImageMagickをインストールする

```bash
# 例: Macの場合
brew install imagemagick
```

3 . コンソールで以下のコマンドを実行する

```bash
$ gem install touchy
```

## 使い方

### 奇数サイズの画像を探し出す

```bash
$ touchy odd ./hoge/*.png
```

もしくは、[Rubyのglob](http://docs.ruby-lang.org/ja/1.9.3/method/Dir/s/glob.html)に基づいたパスを指定することもできます。

```bash
$ touchy odd --path='./hoge/**/*.png'
```

### 奇数サイズの画像を探し出し、偶数サイズに修正した上で、生じた隙間を透明なピクセルで埋める

```bash
$ touchy fix ./hoge/*.png
```

引数についてはoddメソッドと同じです。
