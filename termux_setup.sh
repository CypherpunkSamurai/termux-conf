# Update
pkg update -y && pkg install wget -y

# Install Termux Settings
mkdir -p ~/.config ~/.termux
echo 'extra-keys = []' >> ~/.termux/termux.properties
#get font
wget 'https://github.com/termux/termux-styling/raw/refs/heads/master/app/src/main/assets/fonts/Source-Code-Pro.ttf' ~/.termux/font.ttf
# get colors
wget 'https://github.com/termux/termux-styling/raw/refs/heads/master/app/src/main/assets/colors/ros%C3%A9-pine.properties' -O ~/.termux/colors.properties
termux-reload-settings

# Install Proot Distro
pkg install proot-distro

# Install Neovim
pkg install cmake fish fzf wget lazygit fd ripgrep git
pkg install neovim

# git config
git config --global credential.helper store

# Install LazyVim
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

