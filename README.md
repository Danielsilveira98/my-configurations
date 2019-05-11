# Set up

#### Optional steep
```
sudo pacman-mirrors -f
```

#### Copy and past on terminal
```
git clone https://github.com/Danielsilveira98/my-configurations.git "$HOME/my-configurations"
cd ~/my-configurations
git checkout manjaro-i3
chmod +x ./configure.sh
# ./configure.sh >> log/execution.log
# or
# ./configure.sh work >> log/execution.log
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
