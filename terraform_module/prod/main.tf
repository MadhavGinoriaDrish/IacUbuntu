resource "proxmox_vm_qemu" "test_server" {
  name        = var.name
  target_node = var.target_node
  onboot      = var.onboot
  agent       = var.agent
  clone       = var.clone
  full_clone  = var.full_clone
  memory      = var.memory
  cores       = var.cores
  sockets     = var.sockets
  os_type     = var.os_type
  disk {
           type         = var.vm_disk_default_type
           storage      = var.vm_disk_default_storage
           size         = var.vm_disk_default_size
           cache        = var.vm_disk_default_cache
           backup       = var.vm_disk_default_backup
           
           iothread     = var.vm_disk_default_iothread
           replicate    = var.vm_disk_default_replicate
           ssd          = var.vm_disk_default_ssd
           slot         = var.vm_disk_default_slot
           mbps         = 0
           mbps_rd      = 0
           mbps_rd_max  = 0
           mbps_wr      = 0
           mbps_wr_max  = 0
        }
  nameserver  = var.nameserver
  ipconfig0   = var.ipconfig0
}
