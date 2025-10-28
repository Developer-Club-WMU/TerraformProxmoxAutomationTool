module "devclub_vm1" {
  source = "../../modules/vm"

  name        = "devclub-base-01"
  target_node = "rick"
  template_id = 9000
  storage     = "local-zfs"
  bridge      = "vmbr1"
  gateway     = "192.168.100.1"
  ip          = "192.168.100.60"

  ciuser     = "devuser"
  cipassword = "devpass"
}

output "vm_name" {
  value = module.devclub_vm1.name
}
