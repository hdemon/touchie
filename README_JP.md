# Touchy

奇数サイズ等の画像を探し、修正するためのコマンドラインツールです。

## インストール

1. Ruby 1.8.7以上をインストールする

2. ImageMagickをインストールする

  ##### Macの場合
  ```bash
  $ brew install imagemagick
  ```
  
  ##### Debian/Ubuntuの場合
  ```bash
  $ sudo apt-get install imagemagick libmagickwand-dev
  ```

3. コンソールで以下のコマンドを実行する

  ```bash
  $ gem install touchy
  ```

  rbenvを使っている場合は、続けて`rbenv rehash`を行って下さい。

## 使い方

#### 奇数サイズの画像を探し出す

```bash
$ touchy odd ./hoge/*.png
```

もしくは、[Rubyのglob](http://docs.ruby-lang.org/ja/1.9.3/method/Dir/s/glob.html)に基づいたパスを指定することもできます。

```bash
# ./hoge以下の全ての階層のディレクトリにある.pngファイルを対象にする。
$ touchy odd --path='./hoge/**/*.png'
```

#### 奇数サイズの画像を探し出し、右もしくは下に1pxを加えて偶数サイズに拡張した上で、生じた隙間を透明なピクセルで埋める

```bash
$ touchy fix ./hoge/*.png
```

引数についてはoddメソッドと同じです。

## これから

- 画像を拡張する方向をカスタマイズ可能にする
