terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.2"
    }
  }
}
provider "azurerm" {
  features {}
  
  subscription_id   = "${var.azure_subscription}"
  tenant_id         = "${var.azure_subscription_tenant}"
  client_id         = "${var.service_principal_app}"
  client_secret     = "${var.service_principal_password}"
}

