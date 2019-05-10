sudo -v

echo ' ---> Syncronize repositories'
sudo pacman -Sy --noconfirm >> $HOME/my-configurations/pacman-Sy

echo '---> cd to /tmp to install new package manager (yay)'
cd /tmp
echo '---> Downloading yay'
git clone https://aur.archlinux.org/yay.git
echo '---> Instaling yay'
cd yay
makepkg -si --noconfirm >> $HOME/my-configurations/log/yay.log

echo '---> Install software'
yay -S community/otf-fira-code community/stow community/python-pywal extra/firefox extra/chromium community/terminator community/docker community/docker-compose community/go extra/vim community/fish aur/ulauncher aur/gotop-bin aur/visual-studio-code-bin aur/spotify aur/nvm  --noconfirm >> $HOME/my-configurations/log/software.log

if [ ! -z "$1" ] && [ $1 = "work" ]; then
  echo '---> Instaling work prograns (pacman)'
  yay -S community/dbeaver community/filezilla community/s3cmd aur/google-cloud-sdk aur/rvm aur/google-chrome aur/slack --noconfirm >> $HOME/my-configurations/log/software_work.log
fi

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

echo 'ALERT!!!!!!! restarting in five minutes...'
shutdown -r 5

echo '---> Removing original vi'
yay -R vi --noconfirm

echo '---> Set fish as default shell'
chsh -s $(which fish)

echo '---> Install omf then shellder'
curl -L https://get.oh-my.fish > install
omf install shellder |fish install --path=~/.local/share/omf --config=~/.config/omf

echo '---> DONE !'
