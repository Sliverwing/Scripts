#/bin/bash

# Install HomeBrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# replace git mirror
cd "$(brew --repo)"
git remote set-url origin https://mirrors.ustc.edu.cn/brew.git
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git

echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.bash_profile
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.zshrc
source ~/.bash_profile

# install brew packages
brew install php71
brew install homebrew/php/composer

# set up composer mirror
composer config -g repo.packagist composer https://packagist.laravel-china.org

# set up PATH
echo 'export PATH=$PATH:~/.composer/vendor/bin' >> ~/.zshrc

# set up git user
git config --global user.email "tlv591208510@gmail.com"
git config --global user.name "Sliverwing"

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Add alias
echo "alias pa=\"php artisan\"" >> ~/.zshrc

