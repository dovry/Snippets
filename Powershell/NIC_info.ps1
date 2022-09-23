$Data = @()
$NetInfo = Get-NetIPConfiguration -Detailed 
foreach ( $nic in $Netinfo) { 
    foreach ($ip in $nic.IPv4Address) { 
        $Data += [pscustomobject] @{ Ordinateur=$nic.ComputerName; AliasNIC=$nic.InterfaceAlias; 
                                    NetworkcardName=$nic.InterfaceDescription; IP=$ip; MAC=$nic.NetAdapter.MACAddress;
                                    Status=$nic.NetAdapter.Status
                                    }
    }
 } 
 $Data | Format-Table #-HideTableHeader