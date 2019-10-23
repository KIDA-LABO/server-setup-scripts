インストーラ仕様書
===

本仕様書では，インストールするライブラリ群及びそれぞれのインストール方法を整理する．
ここで示す方法は，全て最新のバージョンのインストールを想定する．
各ライブラリ群の依存関係はインストールスクリプトの仕様書を参照する．

## インストールするライブラリ群

### shell
- zsh
    - apt
- fish
    - apt


### 言語
- Python3
    - ソースコンパイル
- Ruby
    - apt, rbenv
- Java(OpenJDK)
    - apt
- C#(mono)
    - apt
- C/C++
    - apt

### 仮想ツール
- VirtualBox
    - apt

### コンテナ
- Docker
    - ソースコンパイル
- Docker Compose
    - ソースコンパイル


### RDBMS
- MySQL
    - apt
- PostgreSQL
    - apt

### NoSQL
- Redis
    - apt

### 機械学習
- psycopg2
    - pip
- numpy
    - pip(デフォルトである可能性あり)
- Matplotlib
    - pip
- Sklearn
    - pip
- gensim
    - pip
- pandas
    - pip
- Pytorch
    - pip
- keras
    - pip
- tensorflow
    - pip
- Selenium
    - pip
- MeCab
    - apt
- Juman
    - pip
- ChromeDriver
    - ソースコンパイル
- Chromedriver_binary
    - pip
   
### その他
- git
    - apt
- Nginx
    - apt
- ufw
    - apt(デフォルトである可能性あり)
- ncdu
    - apt
- htop
    - apt
- iftop
    - apt
- jupyter
    - pip
- Prometheus
    - ソースコンパイル