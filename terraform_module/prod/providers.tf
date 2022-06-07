terraform {
  required_version = ">= 0.14"
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
    }
  }
}
provider "vault" {
  skip_tls_verify  = var.skip_tls_verify
  address          = var.address
  token            = var.token
}
provider "proxmox" {
  pm_tls_insecure = var.pm_tls_insecure
  pm_api_url      = var.pm_api_url
  pm_user         = data.vault_generic_secret.proxmox_auth.data["proxmox_user"]
  pm_password     = data.vault_generic_secret.proxmox_auth.data["proxmox_passwd"]
  pm_timeout      = var.pm_timeout
}