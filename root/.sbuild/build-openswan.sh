#!/bin/bash
VERSION=2.6.38

for file in openswan/*; do
  rm -rf file
done

cd openswan
curl -L http://download.openswan.org/openswan/openswan-$VERSION.tar.gz -o openswan-$VERSION.tar.gz

tar -xvf openswan-$VERSION.tar.gz
cd openswan-$VERSION

make programs
sudo make programs install
