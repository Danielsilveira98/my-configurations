# Set up

### This dotfile config is meant to be ran on top of a manjaro-i3 clean install.

#### Optional steep
```
echo 'Update pacman mirrons'
sudo pacman-mirrors -f
echo 'optimizar mirrors'
sudo pacman-mirrors -g
```

#### Clone this repository, cd into it, give executable permissions to the script and run it:
```
git clone https://github.com/Danielsilveira98/my-configurations.git "$HOME/my-configurations"
cd ~/my-configurations
git checkout manjaro-i3
chmod +x ./initializing_machine.sh
# ./initializing_machine.sh >> log/execution.log
# or
# ./initializing_machine.sh work >> log/execution.log
```
