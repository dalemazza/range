terraform { 
   required_providers { 
     proxmox = { 
       source = "Telmate/proxmox" 
       version = "2.9.11" 
     } 
   } 
 }

provider "proxmox" { 
   pm_api_url    = "https://192.168.1.46:8006/api2/json" 
   pm_debug      = true
   pm_api_token_id = "blog_example@pam!new_token_id"
   pm_api_token_secret = "9ec8e608-d834-4ce5-91d2-15dd59f9a8c1"
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
         size            = "40G" 
         type            = "scsi" 
         storage         = "local-lvm" 
     } 

     network { 
         model           = "virtio" 
         bridge          = "vmbr0" 
     } 
 }
