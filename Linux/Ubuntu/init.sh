# Mirror
sudo cp /etc/apt/sources.list /etc/apt/source.list.back
sudo sed -i 's/cn.archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
sudo sed -i 's/arhive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
sudo apt update
# Install Git
sudo apt install git -y
# Git Configuration
git config --global user.name Sliverwing
git config --global user.email tlv591208510@gmail.com
# oh-my-zsh
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
