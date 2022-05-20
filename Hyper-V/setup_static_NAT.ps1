New-VMSwitch -SwitchName "Static" -SwitchType Internal
Get-NetAdapter
New-NetIPAddress -IPAddress 172.10.0.1 -PrefixLength 24 -InterfaceAlias "vEthernet (Static)"
New-NetNat -Name StaticNAT -InternalIPInterfaceAddressPrefix 172.10.0.0/24