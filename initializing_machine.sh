echo '---> Update system'
sudo pacman -Syu --noconfirm

echo '------> cd to /tmp to install new package manager (yay)'
cd /tmp

echo '------> downloading yay'
git clone https://aur.archlinux.org/yay.git

echo '------> instaling yay'
cd yay
makepkg -si --noconfirm

echo '---> Install fonts'
yay -S community/otf-fira-code --noconfirm >> $HOME/my-configurations/log/otf-fira-code.log

echo '---> Install Stow'
yay -S community/stow --noconfirm >> $HOME/my-configurations/log/stow.log

echo '---> Instaling my prograns'
echo '---> Instaling pacman prograns'
echo '---> - pywal'
yay -S community/python-pywal --noconfirm >> $HOME/my-configurations/log/pywal.log
echo '---> - firefox'
yay -S extra/firefox --noconfirm >> $HOME/my-configurations/log/firefox.log
echo '---> - chromiun'
yay -S extra/chromium --noconfirm >> $HOME/my-configurations/log/chromium.log
echo '---> - terminator'
yay -S community/terminator --noconfirm >> $HOME/my-configurations/log/terminator.log
echo '---> - docker'
yay -S community/docker --noconfirm >> $HOME/my-configurations/log/docker.log
echo '---> - docker-compose'
yay -S community/docker-compose --noconfirm >> $HOME/my-configurations/log/docker-compose.log
echo '---> - go (golang)'
yay -S community/go --noconfirm >> $HOME/my-configurations/log/golang.log
echo '---> - vim'
yay -S extra/vim --noconfirm >> $HOME/my-configurations/log/vim.log
echo '---> - fish'
yay -S community/fish --noconfirm >> $HOME/my-configurations/log/fish.log

echo '---> Instaling aur prograns'
echo '---> - ulauncher'
yay -S aur/ulauncher --noconfirm >> $HOME/my-configurations/log/ulauncher.log
echo '---> - gotop'
yay -S aur/gotop-bin --noconfirm >> $HOME/my-configurations/log/gotop.log
echo '---> - vscode'
yay -S aur/visual-studio-code-bin --noconfirm >> $HOME/my-configurations/log/vscode.log
echo '---> - spotify'
yay -S aur/spotify --noconfirm >> $HOME/my-configurations/log/spotify.log
echo '---> - nvm (node version management)'
yay -S aur/nvm --noconfirm >> $HOME/my-configurations/log/nvm.log

if [ ! -z "$1" ] && [ $1 = "work" ]; then
  echo '---> Instaling work prograns (pacman)'
  echo '---> - dbeaver'
  yay -S community/dbeaver --noconfirm >> $HOME/my-configurations/log/dbaver.log
  echo '---> - filezilla'
  yay -S community/filezilla --noconfirm >> $HOME/my-configurations/log/filezilla.log
  echo '---> - s3cmd'
  yay -S community/s3cmd --noconfirm >> $HOME/my-configurations/log/s3cmd.log
  echo '---> - google-cloud-sdk'
  yay -S aur/google-cloud-sdk --noconfirm >> $HOME/my-configurations/log/gcsdk.log
  echo '---> - rvm (ruby version management)'
  yay -S aur/rvm --noconfirm >> $HOME/my-configurations/log/rvm.log
  echo '---> - google chrome'
  yay -S aur/google-chrome --noconfirm >> $HOME/my-configurations/log/chrome.log

  echo '---> Instaling work prograns (aur)'
  echo '---> - slack'
  yay -S aur/slack --noconfirm >> $HOME/my-configurations/log/slack.log
fi

echo '---> Set fish as default shell'
chsh -s /usr/bin/fish 
echo '---> install omf'
curl -L https://get.oh-my.fish | fish
echo '---> install shellder'
omf install shellder

echo '---> Back to path'
echo '---> Confing environment'
echo '------> cd into our my configurations dir'
cd "$HOME/my-configurations"

echo '------> attempt to stow adopting files'
stow home --adopt

echo '------> reset changes made by adopting'
git reset --hard

echo '-----> now we can stow things!'
stow home -R

echo '-----> add bash aliases on bashrc'

echo '---> Removing original vi'
yay -R vi --noconfirm
echo '---> DONE !'

echo 'restarting...'
shutdown -r 0
