/*
==================
PROVIDER VARIABLES
==================
*/

# Proxmox Provider
variable "pm_tls_insecure" {
  description = "Tls cert bypass."
  type        = bool
  default     = true
}

variable "pm_api_url" {
  description = " Url for proxmox"
  type        = string
  default     = ""
}

variable "pm_timeout" {
  description = "Timeout for proxmox"
  type        = number
  default     = 600
}

# Vault Provider
variable "skip_tls_verify" {
  description = "For skipping tls verificatioon."
  type        = bool
  default     = true
}

variable "address" {
  description = "Vault url address"
  type        = string
  default     = ""
}

variable "token" {
  description = "Token for vault"
  type        = string
  default     = ""
}

/*
====================================
TERRAFORM VM SPECIFICATION VARIABLES
====================================
*/

variable "name" {
  description = "Name of the VM"
  type        = string
  default     = "sshconnection2"
}

variable "target_node" {
  description = "Node to place the VM on"
  type        = string
  default     = "proxmoxserver"
}

variable "onboot" {
  description = "Defaults to true"
  type        = bool
  default     = true
}

variable "agent" {
  description = "Defaults to 0"
  type        = number
  default     = 1
}

variable "clone" {
  description = "Optional"
  type        = string
  default     = ""
}

variable "full_clone" {
  description = "Optional"
  type        = bool
  default     = true
}

variable "memory" {
  description = "Defaults to 512"
  type        = number
  default     = 2048
}

variable "cores" {
  description = "Defaults to 1"
  type        = number
  default     = 2
}

variable "sockets" {
  description = "Defaults to 1"
  type        = number
  default     = 1
}

variable "clone_wait" {
  description = "Optional"
  type        = string
  default     = null
}

variable "os_type" {
  description = "Which provisioning method to use, based on the OS type. Possible values: ubuntu, centos, cloud-init."
  type        = string
  default     = "cloud-init"
}

variable "vm_disk_default_type" {
  description = "Required. The type of disk device to add. Options: ide, sata, scsi, virtio"
  type        = string
  default     = "scsi"
}
variable "vm_disk_default_storage" {
  description = "Required. The name of the storage pool on which to store the disk"
  type        = string
  default     = ""
}

variable "vm_disk_default_size" {
  description = "Required. The size of the created disk, Must include G, M, or K, where they represent Gigabytes, Megabytes, and Kilobytes respectively"
  type        = string
  default     = "32G"
}

variable "vm_disk_default_cache" {
  description = "The drive’s cache mode. Options: directsync, none, unsafe, writeback, writethrough"
  type        = string
  default     = "writeback"
}
variable "vm_disk_default_backup" {
  description = "Whether the drive should be included when making backups"
  type        = number
  default     = 0
}
variable "vm_disk_default_iothread" {
  description = "Whether to use iothreads for this drive. Only effective with a disk of type virtio, or scsi when the the emulated controller type (scsihw top level block argument) is virtio-scsi-single"
  type        = number
  default     = 1
}
variable "vm_disk_default_replicate" {
  description = "Whether the drive should considered for replication jobs"
  type        = number
  default     = 0
}

variable "vm_disk_default_ssd" {
  description = "Whether to expose this drive as an SSD, rather than a rotational hard disk"
  type        = number
  default     = 0
}

variable "vm_disk_default_slot" {
  description = "Not Sure what this is used for. Do not use"
  type        = number
  default     = 0
}

# Cloud Init Specific

variable "nameserver" {
  description = "(optional)"
  type        = string
  default     = ""
}

variable "ipconfig0" {
  description = "(optional)"
  type        = string
  default     = "ip=dhcp"
}


variable "ci_wait" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "sshkeys" {
  description = "sshkeys"
  type        = string
  default     = ""
}
variable "ssh_private_key" {
  # type = string
  description = " Password for proxmox"
  default     = ""
}
