# Set up

### Copy and past on terminal
```
git clone https://github.com/Danielsilveira98/my-configurations.git "$HOME/.my-configurations"
cd ~/.my-configurations
git checkout emelentary
chmod +x ./configure.sh
```

### Set fish shell as default shell
`chsh -s $(which fish)`

### Instaling OMF
```
curl -L https://get.oh-my.fish > install
fish install --path=~/.local/share/omf --config=~/.config/omf
```

### Instaling Shellder
`omf install shellder`

### Configuring NVM
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
omf install https://github.com/FabioAntunes/fish-nvm
omf install https://github.com/edc/bass
```

### RVM installing
```
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable --ruby
```
