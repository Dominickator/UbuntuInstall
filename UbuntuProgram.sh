echo "Installing applications..."
sudo apt-add-repository multiverse && sudo apt-get update
sudo snap install code --classic
sudo apt update && sudo apt dist-upgrade
sudo apt install steam-installer -y
sudo apt install git -y
sudo apt install lutris -y

echo "Attempting to setup Flatpak..."
sudo apt install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "Installing headsetcontrol and xone..."
cd /tmp
sudo apt install curl cabextract -y
git clone https://github.com/medusalix/xone
cd xone
sudo ./install.sh --release
sudo xone-get-firmware.sh

cd /tmp
sudo apt-get install build-essential git cmake libhidapi-dev
git clone https://github.com/Sapd/HeadsetControl && cd HeadsetControl
mkdir build && cd build
cmake ..
make
sudo make install

echo "Installing system apps and updating..."
sudo apt install gnome-tweaks -y
sudo apt install gnome-console -y
sudo apt update && sudo apt dist-upgrade
flatpak install flathub com.mattjakeman.ExtensionManager -y
flatpak install flathub com.microsoft.Edge -y
flatpak install flathub dev.vencord.Vesktop -y
sudo reboot
