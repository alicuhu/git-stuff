# Check dependencies
readelf -d binary-or-library |head -20

# Share directory between Windows and Linux
sudo apt install cifs-utils
mkdir /shared & mount.cifs //172.10.0.1/Shared /shared -o user=nam.le,uid=$UID
