if [[ $1 != *.com ]]
then
    echo Please input the email. Usage: setup.sh your-email@gmail.com
    exit 2
else
    EMAIL=$1
fi

[ -f ~/.bashrc ] && echo "~/.bashrc exists" || touch ~/.bashrc
touch ~/.bashrc
# Bash aliases
cat ./aliases.sh >> ~/.bashrc
# Git aliases
./git-alias.sh

# Generate SSH Key
SSH_KEYNAME=id_ed25519_personal
ssh-keygen -t ed25519 -C "$EMAIL" -P "" -f ~/.ssh/$SSH_KEYNAME

# Add config
[ -f ~/.ssh/config ] && echo "~/.ssh/config exists" || touch ~/.ssh/config
cat ./config >> ~/.ssh/config

# Add your SSH key to ssh-agent so that you don't have to enter passphrases every time using the key
ssh-add -l &>/dev/null
[ "$?" == 2 ] && eval "$(ssh-agent -s)"
ssh-add ~/.ssh/$SSH_KEYNAME
