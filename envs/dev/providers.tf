provider "proxmox" {
  # Variables injected from environment (via TF_VAR_*)
  pm_api_url          = var.pm_api_url
  pm_api_token_id     = var.pm_api_token_id
  pm_api_token_secret = var.pm_api_token_secret

  # Common for internal Proxmox clusters with self-signed certs
  pm_tls_insecure = var.pm_tls_insecure
}
