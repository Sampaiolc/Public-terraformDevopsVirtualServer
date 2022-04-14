resource "null_resource" "createHostFile" {
  provisioner "local-exec" {
    command = "echo -e '\n[all:vars] \nansible_ssh_user=${var.adminUser} \nansible_ssh_private_key_file=../pem/vm-${var.project}.pem'>> ../output/publicIP-${var.project}.txt"
    //command = "cp ../output/publicIP-${var.project}.txt ../output/inventory"
  }
  depends_on = [
    local_file.outputip
  ]
}
