provider "proxmox" {
  endpoint  = var.pm_api_url
  insecure  = var.pm_tls_insecure
  api_token = "${var.pm_api_token_id}=${var.pm_api_token_secret}"
}
