sudo apt-get update
sudo apt-get install -y curl git wget unzip libgconf-2-4 gdb libstdc++6 libglu1-mesa fonts-droid-fallback lib32stdc++6
sudo python3 psmisc
sudo apt-get clean

sudo git clone https://github.com/flutter/flutter.git -b 3.3.2 /usr/local/flutter

echo INSTALL CHROME

sudo apt install wget

sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i google-chrome-stable_current_amd64.deb

sudo apt-get install -f

google-chrome --version

sudo wget https://chromedriver.storage.googleapis.com/108.0.5359.71/chromedriver_linux64.zip

sudo unzip chromedriver_linux64.zip

sudo mv chromedriver /usr/bin/chromedriver

sudo chown root:root /usr/bin/chromedriver

sudo chmod +x /usr/bin/chromedriver

sudo chromedriver --port=4444 --detach=true &

sudo /usr/local/flutter/bin/flutter drive --driver=/home/vsts/work/1/s/test_driver/main.dart --target=/home/vsts/work/1/s/integration_test/app_test.dart -d web-server
