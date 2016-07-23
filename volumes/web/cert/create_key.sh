#!/bin/bash
#  秘密鍵を作る
sudo openssl genrsa -out VAGRANT.key 2048

#  公開鍵を作る
sudo openssl req -new -key VAGRANT.key -out VAGRANT.csr

#  パスフレーズを省略できるようにする
sudo openssl rsa -in VAGRANT.key -out VAGRANT.key

#  証明書を作る。
sudo openssl x509 -req -days 3650 -in VAGRANT.csr -signkey VAGRANT.key -out VAGRANT.crt
