resource "null_resource" "web" {
  depends_on = [time_sleep.wait_30_seconds]
  provisioner "remote-exec" {
    inline = ["echo 'wait for ssh connection'"]
    connection {
      type        = "ssh"
      user        = data.vault_generic_secret.ansible_auth.data["ansible_user"]
      host        = proxmox_vm_qemu.test_server.ssh_host
      password    = data.vault_generic_secret.ansible_auth.data["ansible_user_passwd"]
      agent       = false
    }
  }
  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook  -i hosts -l ${proxmox_vm_qemu.test_server.ssh_host} ./terraform_module/ansible/nginx.yml -e 'target_host=${proxmox_vm_qemu.test_server.ssh_host}' "
  }
}
