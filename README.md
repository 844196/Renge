# Renge
[![author](http://img.shields.io/badge/author-844196-blue.svg?style=flat)](https://github.com/844196)
[![version](http://img.shields.io/github/tag/844196/Renge.svg?style=flat&label=version)](https://github.com/844196/Renge/releases)
[![license](http://img.shields.io/badge/license-MIT-red.svg?style=flat)](LICENSE)
[![issue](http://img.shields.io/github/issues/844196/Renge.svg?style=flat)](https://github.com/844196/Renge/issues)
[![travis-ci](https://img.shields.io/travis/844196/Renge.svg?style=flat)](https://travis-ci.org/844196/Renge)

![](http://41.media.tumblr.com/e74cbb37699286f61e8eec0ea1514be8/tumblr_npzq5o8LII1s7qf9xo1_1280.png)


## Installation
### Mac OS X / Homebrew
```shellsession
$ brew tap 844196/Renge
$ brew install Renge
```

### Debian / apt-get
```shellsession
$ sudo apt-add-repository "deb http://ssiserver.moe.hm/debian ./"
$ sudo apt-get update
$ sudo apt-get install renge
```

### Other
```shellsession
$ git clone https://github.com/844196/Renge Renge
$ cd ./Renge
# make install
```

## Usage
### Basic usage
```shellsession
$ renge
あぁうちはなぁ... なかあて！なかあてが熱いと思いますが！

$ renge
終始、司会者のうしろの窓の外で、ラジオ体操をしてるおじさんがいたのん
```

### Additional usage
#### clangsay
```shellsession
$ renge | clangsay
 _____________________________________
< この花食べれるん！？なんて名前なん？ >
 -------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```

#### `-l` and `-n` option
```shellsession
$ renge -l | headtail --pretty
0 CMでは見たことあるのん！
1 「おっちゃん、この大根まけてーな」とかもあったのん
2 「トラ柄を舐めるんじゃないのん！」とかの方がよかったん？
3 あ、そうか 机がひとつ増えてたのん
4 あぁうちはなぁ... なかあて！なかあてが熱いと思いますが！
:
:
:
501 高い！？
502 黒板消しはついでなのねん
503 ！ うち浮いてるのん！？
504 ！ すぐ着替えてくるん！
505 ？ ねーねーいるのん

$ renge -n 4
あと、写真のかわりに絵送るん！ クレヨンもいるのんな！！

$ renge -n 501
高い！？
```


## Thanks

- [rekanan](https://soundcloud.com/rekanan) ([sudo apt-get install RENGE](https://soundcloud.com/rekanan/sudo-apt-get-install-renge))
    - そもそも、このツールは`brew install RENGE`を行いたいが為のものでした（brewの仕様上大文字は無理でしたが）。
    - [言及までして頂いてありがとうございます](https://twitter.com/yupixel/status/556448879537709056)
- [sasairc](https://github.com/sasairc)
    - aptリポジトリの提供（ほんとに`sudo apt-get install renge`が出来るようになった）や`Makefile`の作り方まで教えてもらいました。ありがとうございます。


## License
[MIT](LICENSE)


## Author
Masaya Tk (<https://github.com/844196>)
