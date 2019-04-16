echo 'Update pacman mirrons'
sudo pacman-mirrors -f
echo 'optimizar mirrors'
sudo pacman-mirrors -g
echo 'Update system'
sudo pacman -Syyuu

echo 'cd to /tmp to install new package manager (yay)'
cd /tmp

echo 'downloading yay'
git clone https://aur.archlinux.org/yay.git

echo 'instaling yay'
cd yay
makepkg -si --noconfirm

echo 'Install fonts'
yay -S community/otf-fira-code --noconfirm

echo 'Install Stow'
yay -S community/stow --noconfirm

echo 'Instaling my prograns'
echo 'Instaling pacman prograns'
echo '- pywal'
yay -S community/python-pywal --noconfirm
echo '- firefox'
yay -S extra/firefox --noconfirm
echo '- chromiun'
yay -S extra/chromium --noconfirm
echo '- terminator'
yay -S community/terminator --noconfirm
echo '- docker'
yay -S community/docker --noconfirm
echo '- docker-compose'
yay -S community/docker-compose --noconfirm
echo '- go (golang)'
yay -S community/go --noconfirm
echo '- vim'
yay -S extra/vim --noconfirm

echo 'Instaling aur prograns'
echo '- ulauncher'
yay -S aur/ulauncher --noconfirm
echo '- gotop'
yay -S aur/gotop-bin --noconfirm
echo '- vscode'
yay -S aur/visual-studio-code-bin --noconfirm
echo '- spotify'
yay -S aur/spotify --noconfirm
echo '- nvm (node version management)'
yay -S aur/nvm --noconfirm

if [ ! -z "$1" ] && [ $1 = "work" ]; then
  echo 'Instaling work prograns (pacman)'
  echo '- dbeaver'
  yay -S community/dbeaver --noconfirm
  echo '- filezilla'
  yay -S community/filezilla --noconfirm
  echo '- s3cmd'
  yay -S community/s3cmd --noconfirm
  echo '- google-cloud-sdk'
  yay -S aur/google-cloud-sdk --noconfirm
  echo '- rvm (ruby version management)'
  yay -S aur/rvm --noconfirm
  echo '- google chrome'
  yay -S aur/google-chrome --noconfirm

  echo 'Instaling work prograns (aur)'
  echo '- slack'
  yay -S aur/slack --noconfirm
fi

echo 'Back to path'
echo 'Confing environment'
echo 'cd into our my configurations dir'
cd "$HOME/my-configurations"

echo 'attempt to stow adopting files'
stow home --adopt

echo 'reset changes made by adopting'
git reset --hard

echo 'now we can stow things!'
stow home -R


echo 'Removing original vi'
yay -R vi --noconfirm


echo 'DONE !'
