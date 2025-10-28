variable "pm_api_url" {
  description = "Proxmox API endpoint (e.g., https://10.42.0.5:8006/api2/json)"
  type        = string
}

variable "pm_api_token_id" {
  description = "Proxmox token identifier, format user@realm!token"
  type        = string
  sensitive   = true
}

variable "pm_api_token_secret" {
  description = "Proxmox token secret"
  type        = string
  sensitive   = true
}

variable "pm_tls_insecure" {
  description = "Skip TLS verification (true for self-signed certs)"
  type        = bool
  default     = true
}
