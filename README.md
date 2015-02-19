# Touchy

Command line tool to find and modify illigal images

[日本語ガイド](./README_JP.md)

## Installation

1 . install ruby(>= 1.8.7)

2 . install imagemagick

```bash
# ex: Mac
$ brew install imagemagick
```

3 . execute the following command

```bash
$ gem install touchy
```

## Usage

### Find the images that has odd size

```bash
$ touchy odd ./hoge/*.png
```

or you can use [Ruby glob](http://docs.ruby-lang.org/ja/1.9.3/method/Dir/s/glob.html) path option.

```bash
$ touchy odd --path='./hoge/**/*.png'
```

### Find the odd size images and extend this size to even one, and fill the space with transparent pixel.

```bash
$ touchy fix ./hoge/*.png
```

The arguments are same as odd method.

## Contributing

1. Fork it ( http://github.com/<my-github-username>/touchy/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
