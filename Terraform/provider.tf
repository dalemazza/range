terraform {

  required_providers {

    proxmox = {

      source  = "telmate/proxmox"

      version = ">=2.8.0"

    }

  }

}

provider "proxmox" {

  pm_api_url      = "https://${var.pm_host}:8006/api2/json"







  pm_api_token_id = "blog_example@pam!new_token_id"

  pm_api_token_secret = "9ec8e608-d834-4ce5-91d2-15dd59f9a8c1"
  
  pm_parallel     = 10

  pm_timeout      = 600

  #  pm_debug = true

  pm_log_enable = true

  pm_log_file   = "terraform-plugin-proxmox.log"

  pm_log_levels = {

    _default    = "debug"

    _capturelog = ""

  }

}
