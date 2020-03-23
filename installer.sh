#!/bin/bash

#===================================================
# 準備
#===================================================
askYesOrNo(){
  while true; do
    read -p "$1 (y/N)?" answer
    case $answer in
      [yY] | [yY]es | YES )
        return 0;;
      [nN] | [nN]o | NO )
        return 1;;
      * ) echo "Please answer yes or no.";;
    esac
  done
}

sudo sh -c "apt update"

#===================================================
# pip install
#===================================================
for name in `ls ~/piplist/*.txt`
do
  askYesOrNo "${name%.txt}をインストールしますか?"
  if [ $? -eq 0 ]; then
  workon ${name%.txt}
  pip install -r $HOME/piplist/$name
  fi
done

# MeCab
printf "password:"
read password
echo "$password" | su
sudo sh -c "apt install MeCab"
sudo sh -c "apt install libmecab-dev"
sudo sh -c "apt install mecab-ipadic-utf8"
sudo sh -c "apt install swig"
sudo sh -c "pip install mecab-python3"

# # Neologdを使いたかったらここのコメントアウトを外す
# git clone https://github.com/neologd/mecab-ipadic-neologd.git
# cd mecab-ipadic-neologd

sudo sh -c "bin/install-mecab-ipadic-neologd"

# Chrome
curl https://dl.google.com/linux/linux_signing_key.pub | sudo sh -c "apt-key add -"
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo sh -c "tee /etc/apt/sources.list.d/google-chrome.list"
sudo sh -c "apt install google-chrome-stable"

# ChromeDriver
sudo sh -c "apt install unzip"
cd /tmp/
curl -O https://chromedriver.storage.googleapis.com/77.0.3865.40/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo sh -c "mv chromedriver /usr/local/bin/"  # パスが通っているフォルダに移動
rm chromedriver_linux64.zip