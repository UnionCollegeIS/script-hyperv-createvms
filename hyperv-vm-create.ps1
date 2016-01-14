#------------------------------------------------------------------------------#
# Purpose:                                                                     #
#   Create multiple virtual machines with differencing disks                   #
# Contributors:                                                                #
#   Shane Flowers                                                              #
#   Keith Wade                                                                 #
#------------------------------------------------------------------------------#

$machine_list = Get-Content ""

for($i=0; $i -le 1; $i++){
  $vmname = $machine_list[$i]
  $location = "E:\VMs\$vmname"
  
  New-VHD -Path "" `
    -Differencing `
    -ParentPath ""

  New-VM -Name `
    -MemoryStartupBytes 2GB `
    -Generation 2 `
    -Path "" `
    -SwitchName "" `
    -VHDPath ""

  Set-VM -Name `
    -DynamicMemory `
    -MemoryMaximumBytes 8GB `
    -MemoryMinimumBytes 2GB `
    -MemoryStartupBytes 2GB `
    -ProcessorCount 4 `
    -SmartPagingFilePath "" `
    -SnapshotFileLocation "" `
    -Notes ""

  Set-VMFirmware $vmname `
    -EnableSecureBoot off
  $adapter = Get-VMNetworkAdapter `
    -VM $vmname `
    -Name *

  Set-VMNetworkAdapterVlan `
    -VMNetworkAdapter $adapter `
    -VlanId
}
