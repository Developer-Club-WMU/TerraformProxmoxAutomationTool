output "connected_proxmox_api" {
  description = "Terraform is configured to talk to this Proxmox API"
  value       = var.pm_api_url
  sensitive   = false
}
