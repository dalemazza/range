terraform { 

   required_providers { 

     proxmox = { 

       source = "Telmate/proxmox" 

       version = "2.9.11" 

     } 

   } 

 }

provider "proxmox" { 

   pm_api_url    = "https://10.20.30.41:8006/api2/json" 

   pm_debug      = true 

 }

resource "proxmox_vm_qemu" "dc01" { 

     count       = 1 

     name        = "dc01" 

     target_node = "srv01" 

     clone       = "win server 2016 template" 

     full_clone  = true 

     os_type     = "cloud_init" 

     cores       = 6

     sockets     = 1 

     cpu         = "host" 

     memory      = 4096 

     scsihw            = "virtio-scsi-pci" 

     bootdisk          = "scsi0" 

     disk { 

         size            = "20G" 

         type            = "scsi" 

         storage         = "local-lvm" 

     } 

     network { 

         model           = "virtio" 

         bridge          = "vmbr0" 

     } 

 }
