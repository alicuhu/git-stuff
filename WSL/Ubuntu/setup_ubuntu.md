# Setup WSL Ubuntu

## Setup

1. Create `.bashrc_company` in this folder to add custom commands for your company
2. Run script
```bash
setup_ubuntu.sh
```

## Usefull Commands

### Check dependencies
```bash
readelf -d binary-or-library | head -20
```

### Share directory between Windows and Linux
```bash
sudo apt install cifs-utils
mkdir /shared & mount.cifs //172.10.0.1/Shared /shared -o user=nam.le,uid=$UID
```
