terraform { 
   required_providers { 
     proxmox = { 
       source = "Telmate/proxmox" 
       version = "2.9.11" 
     } 
   } 
 }

resource "proxmox_vm_qemu" "dc01" { 
     count = var.win_server_amount 
     name = "dc01" 
     target_node = var.pm_host 
     clone = var.win_server_template
     os_type = "cloud-init" 
     cores = 12
     sockets = 1
     cpu = "host" 
     memory = var.server_ram
     scsihw = "virtio-scsi-pci" 
     bootdisk = "scsi0" 
     disk { 
        size = "40G" 
        type = "scsi" 
        storage = "local-lvm" 
     } 
     network {
        ipconfig0 = "ip=${var.server_ips[count.index]}/${var.networkrange},gw=${var.gateway}"
        model = "virtio" 
        bridge = "vmbr0" 
     } 
 }
