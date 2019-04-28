# Set fish as default shell
chsh -s /usr/bin/fish

# Install omf
curl -L https://get.oh-my.fish > install
fish install --path=~/.local/share/omf --config=~/.config/omf

# Install shelder (inside fish)
omf install shellder

# Removing original vi
yay -R vi --noconfirm