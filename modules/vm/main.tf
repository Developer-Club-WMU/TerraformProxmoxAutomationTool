terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = ">= 0.0.9"
    }
  }
}

resource "proxmox_virtual_environment_vm" "vm" {
  name      = var.name
  node_name = var.target_node

  clone {
    vm_id        = var.template_id
    datastore_id = var.storage
  }

  cpu {
    cores = var.cores
  }

  memory {
    dedicated = var.memory
  }

  disk {
    datastore_id = var.storage
    interface    = "scsi0"
    size         = var.disk_size
  }

  network_device {
    bridge = var.bridge
    model  = "virtio"
  }

  initialization {
    datastore_id = var.storage

    user_account {
      username = var.ciuser
      password = var.cipassword
      keys     = length(var.sshkeys) > 0 ? [var.sshkeys] : null
    }

    ip_config {
      ipv4 {
        address = "${var.ip}/24"
        gateway = var.gateway
      }
    }
  }

}
