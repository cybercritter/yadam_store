sudo apt update
sudo apt upgrade -y
sudo shutdown -r now
yadm
sudo apt install yadm -y
ssh-keygen -t ed25519 -C "kara"
gvim .ssh/id_ed25519.pub 
gpg --full-generate-key
gpg --list-secret-keys --keyid-format=long 
gpg --armor --export EBFC7DDB9D74EBC8 
yadm clone git@github.com:cybercritter/yadam_store.git
ls -alrt
chsh -s /bin/zsh
which zsh
sudo apt update
sudo apt install zsh -y
chsh -s /bin/zsh
