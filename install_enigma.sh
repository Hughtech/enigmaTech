#!/bin/bash
cd
echo "Installing dependencies..."
sudo add-apt-repository ppa:maarten-fonville/protobuf
sudo apt-get update
sudo apt-get install wget git g++ make build-essential libprotobuf-dev protobuf-compiler zlib1g-dev libglew-dev libglm-dev libpng-dev libglu1-mesa-dev libalure-dev libvorbisfile3 libvorbis-dev libbox2d-dev libdumb1-dev libsdl2-dev libxrandr-dev libxinerama-dev libepoxy-dev default-jre default-jdk pkg-config rapidjson-dev libyaml-cpp-dev libboost-dev libboost-filesystem-dev libboost-system-dev libboost-program-options-dev libboost-iostreams-dev pulseaudio libpugixml-dev
echo "Downloading Enigma..."
git clone git://github.com/enigma-dev/enigma-dev.git
cd enigma-dev
echo "Downloading easy startup script..."
wget https://pastebin.com/raw/aBAU4j3C -O start.sh
sed -i -e 's/\r$//' start.sh
echo "Correcting permissions..."
chmod +x start.sh
chmod +x install.sh
echo "Installing..."
./install.sh
echo "Rebuilding compiler..."
make clean
make
echo "Done, to start Enigma just run ~/enigma-dev/start.sh"