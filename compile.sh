rm -rf build

wget https://raw.githubusercontent.com/raspberrypi/pico-setup/master/pico_setup.sh
chmod +x pico_setup.sh
./pico_setup.sh

export PICO_SDK_PATH=../pico/pico-sdk
mkdir build
cd build

cmake ..
make
