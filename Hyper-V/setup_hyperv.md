# Setup static NAT network for Hyper-V VMs

Run these commands on PowerShell or copy into a file `setup_static_NAT.ps1` and run
```shell
New-VMSwitch -SwitchName "Static" -SwitchType Internal
Get-NetAdapter
New-NetIPAddress -IPAddress 172.10.0.1 -PrefixLength 24 -InterfaceAlias "vEthernet (Static)"
New-NetNat -Name StaticNAT -InternalIPInterfaceAddressPrefix 172.10.0.0/24
```
