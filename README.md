<p align="center">
  <img src="https://farm4.staticflickr.com/3820/19830258203_02fe696232_m.jpg" width="200" height="200">
  <br>
  <br>
  <img src="https://farm1.staticflickr.com/285/19828504024_637291afeb_o.png" width="240" height="44">
  <br>
  そしてもっかい実行すれば、うちがしゃべるのん！
  <br>
  <br>
  <a href="https://github.com/844196"><img src="http://img.shields.io/badge/author-844196-blue.svg?style=flat"></a>
  <a href="https://github.com/844196/Renge/releases"><img src="http://img.shields.io/github/release/844196/Renge.svg?style=flat&label=version"></a>
  <a href="LICENSE"><img src="https://img.shields.io/github/license/844196/renge.svg?style=flat"></a>
  <a href="https://github.com/844196/Renge/issues"><img src="http://img.shields.io/github/issues/844196/Renge.svg?style=flat"></a>
  <a href="https://travis-ci.org/844196/Renge"><img src="https://img.shields.io/travis/844196/Renge.svg?style=flat"></a>
  <a href="https://gitter.im/844196/Renge?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge"><img src="https://badges.gitter.im/Join%20Chat.svg"></a>
  <br>
</p>

---

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

#### `-f` option
```shellsession
$ renge -f saihonyaku
見て解決する試み？

$ renge -f saihonyaku
それは追従された難しい日刊紙です; アドレス .........。
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
