echo "Starting..."
sudo apt update

echo "Installing curl"
sudo apt install curl

echo "Installing git"
sudo apt install git

echo "Installing ZSH"
sudo apt install zsh

echo "Making ZSH the default shell"
chsh -s $(which zsh)

echo "Installing Oh-My-ZSH"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "installing zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Copying .gitconfig to root"
cp $(pwd)/.gitconfig ~/.gitconfig

echo "Copying .zshrc to root"
cp $(pwd)/.zshrc ~/.zshrc

echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

echo "Adding Microsoft VSCode repository"
sudo add-apt-repository “deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main”

echo "Installing VSCode"
sudo apt install code
