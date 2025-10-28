terraform {
  required_version = ">= 1.11.0"

  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = ">= 3.0.1"
    }
  }

  backend "local" {
    path = "../../terraform.tfstate"
  }
}
