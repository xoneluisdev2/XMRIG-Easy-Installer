echo "Hello and Thank you for installing XMR Installer to make the progress faster"

echo "Now this file will get install packages to install XMRIG and make sure that you are root or sudo"

sudo apt-get update && sudo apt-get upgrade && sudo apt-get install git

sudo apt-get install git build-essential cmake automake libtool autoconf

echo "Ok, packages are installed and now it time to clone XMRIG offcial Github repository"

git clone http://github.com/xmrig/xmrig.git

mkdir xmrig/build && cd xmrig/scripts

./build_deps.sh && cd ../build

echo "Two commands will take bit longer to process. You are ready to mine Monero on Ubuntu 20.04 once its complete"

cmake .. -DXMRIG_DEPS=scripts/deps

make -j$(nproc)

echo "We are done making XMRIG and now it your turn to add info on the JSON config file. Have a great day!"
