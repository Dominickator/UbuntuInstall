sudo snap install code --classic
sudo snap install discord
sudo apt update && sudo apt dist-upgrade
sudo apt install steam -y
sudo apt install git -y
sudo apt install valgrind -y
sudo apt install gdb -y
sudo apt install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
cd ~/Documents
git clone https://github.com/medusalix/xone
cd xone
sudo ./install.sh --release
sudo xone-get-firmware.sh
sudo apt install gnome-tweaks -y
sudo apt install gnome-console -y
sudo apt update && sudo apt dist-upgrade
sudo reboot
