alias sstart="systemctl start"
alias sstop="systemctl stop"
alias sstat="systemctl status"
alias sstat="systemctl restart"
alias syslog="tail -30 /var/log/syslog"
alias ai="apt install -y"
alias arm="apt remove -y"
alias au="apt update -y"
alias s="service"

export C=/mnt/c

if [ -f ~/.bashrc_company ]; then
    . ~/.bashrc_company
fi