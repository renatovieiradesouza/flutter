#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

apt-get update && apt-get -yq install \
  curl \ 
  unzip \
  libgconf-2-4 \
  libnss3 \
  libxss1 \
  fonts-liberation \
  libappindicator3-1 \
  libasound2 \
  libatk-bridge2.0-0 \
  libgtk-3-0 \
  libnspr4 \
  libpango-1.0-0 \
  libx11-xcb1 \
  lsb-release \
  wget \
  tzdata \ 
  git \
  gdebi-core \
  libnss3 \
  libgconf-2-4 \
  libgbm1 \
  xdg-utils \
  libgconf-2-4 \
  gdb libstdc++6 \
  libglu1-mesa \
  fonts-droid-fallback \
  lib32stdc++6
  
dpkg-reconfigure -f noninteractive tzdata
apt-get clean
git clone https://github.com/flutter/flutter.git -b stable
export PATH=$PATH:/app/flutter/bin
export PATH="${PATH}:/app/flutter/bin" 

wget https://chromedriver.storage.googleapis.com/108.0.5359.71/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
rm chromedriver_linux64.zip
mv chromedriver /usr/local/bin
export PATH=$PATH
  
git config --global --add safe.directory /flutter
cd flutter && git pull -f && flutter upgrade  

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
gdebi -n google-chrome-stable_current_amd64.deb

flutter config --enable-web && flutter doctor
