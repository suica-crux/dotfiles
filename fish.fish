echo 'Installing fisher...'
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

echo 'Installing theme...'
fisher install oh-my-fish/theme-bobthefish
git clone https://github.com/powerline/fonts.git
cd fonts/
./install.sh
cd ../
rm -rf fonts/

echo 'Installing plugins...'
fisher install jethrokuan/z
fisher install oh-my-fish/plugin-peco
fisher install 0rax/fish-bd
fisher install jethrokuan/fzf
fisher install laughedelic/fish_logo

fish_logo blue cyan green
echo 'Welcome to fish, suica-crux!'