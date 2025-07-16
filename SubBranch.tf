terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}
# terraform {
#   backend "azurerm" {
#     resource_group_name  = "Pta_Nahin"
#     storage_account_name = "ptanahinstorage"
#     container_name       = "ptahainstate"
#     key                  = "terraform.tfstate"
#     subscription_id      = "ff5b2fc2-2ebb-4a22-9e25-a8941510f4c7"
#   }
# }

provider "azurerm" {
  features {}
  subscription_id = "ff5b2fc2-2ebb-4a22-9e25-a8941510f4c7"
}
resource "azurerm_resource_group" "RainySeason" {
  name     = "Baarish_Season"
  location = "central india"
}
resource "azurerm_resource_group" "FloodySeason" {
  name     = "Flood_Season"
  location = "Western India"
}
resource "azurerm_storage_account" "example" {
  name                     = "mystorageaccount12345"  # Must be globally unique, only lowercase alphanumeric characters allowed.
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"  # Choose your desired replication type (e.g., GRS, LRS, ZRS).
  public_network_access_enabled = false  # Enable public access if needed.
  tags = {
    environment = "staging"
  }
}