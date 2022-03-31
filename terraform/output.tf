// Output Private key sensitive
#output "tls_private_key" {
#  value     = tls_private_key.privateSSH.private_key_pem
#  sensitive = true
#}

// Output Ip Public
output "azurerm_public_ip" {
  value = azurerm_public_ip.publicIP.ip_address

}