// Create network interface

resource "azurerm_network_interface" "nic" {
  name                = "nic-${var.project}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rgGroup.name

  ip_configuration {
    name                          = "nicConfig-${var.project}"
    subnet_id                     = azurerm_subnet.vNetSubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.public_ip.id

  }
  tags = {
    "environment" = var.tag-environment[0]
  }

}