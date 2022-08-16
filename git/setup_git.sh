touch ~/.bashrc
# Bash aliases
cat ./aliases.sh >> ~/.bashrc
# Git aliases
./git-alias.sh

# SSH Key
SSH_KEYNAME=id_ed25519
ssh-keygen -t ed25519 -C "hoangnam.itus@gmail.com" -P "" -f ~/.ssh/$SSH_KEYNAME
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/$SSH_KEYNAME