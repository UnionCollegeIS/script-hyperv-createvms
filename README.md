# Hyper-V VM Creation Script

## Description
This PowerShell 4.0 script creates multiple virtual machines.

### Customization and Input
There are several configurable variables available to customize the script to your specific configuration.

#### Available Variables
* $machine_list
  * This variable is used to tell the script the names of the VMs to create. It can accept a single string for a *single machine* or it can accept input from a `\n` *delimited list from a raw text file* using the `Get-Content` command.
* $root_directory
  * This variable sets the scripts root directory for generating VMs. (See *Environment* below)

## Environment
This script is designed to work in the file structure detailed below. If your directory structure is different, you will need to modify the script accordingly.
```
$root_directory
└── VMs
    ├── $vmname
    |   ├── Checkpoints
    |   └── Virtual Hard Disks
    └── $vmname
        ├── Checkpoints
        └── Virtual Hard Disks
```

## Command Reference
* [Get-Content](https://technet.microsoft.com/en-us/library/hh849787.aspx)
* [New-VHD](https://technet.microsoft.com/en-us/library/hh848503.aspx)
* [New-VM](https://technet.microsoft.com/en-us/library/hh848537.aspx)
* [Set-VM](https://technet.microsoft.com/en-us/library/hh848575.aspx)
* [Set-VMFirmware](https://technet.microsoft.com/en-us/library/dn464287.aspx)
* [Get-VMNetworkAdapter](https://technet.microsoft.com/en-us/library/hh848526.aspx)
* [Set-VMNetworkAdapterVlan](https://technet.microsoft.com/en-us/library/hh848475.aspx)

## Contributors
* Shane Flowers
* [Keith Wade](https://github.com/keawade/)
