# Set up

```
sudo pacman-mirrors -f
sudo pacman-mirrors -g
sudo pacman -Syu

#cd to /tmp to install new package manager (yay)
cd /tmp
# downloading yay
git clone https://aur.archlinux.org/yay.git
# instaling yay
cd yay
makepkg -si --noconfirm

# back to home dir
cd $HOME
git clone https://github.com/Danielsilveira98/my-configurations.git "$HOME/my-configurations"
cd ~/my-configurations
git checkout manjaro-i3
chmod +x ./configure.sh
# ./configure.sh >> log/execution.log
# or
# ./configure.sh work >> log/execution.log
```
