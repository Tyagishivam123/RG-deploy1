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
#     resource_group_name  = "Agrawest"
#     storage_account_name = "aug15ind"
#     container_name       = "backend"
#     key                  = "terraform.tfstate"
#     subscription_id      = "5e4fafbb-ef69-4e17-8835-68030d81f758"
#   }
# }
# new changes done
provider "azurerm" {
  features {}
  subscription_id = "5e4fafbb-ef69-4e17-8835-68030d81f758"
}
# 2 RG hain
resource "azurerm_resource_group" "RainySeason" {
  name     = "Baarish_Season"
  location = "central india"
}
resource "azurerm_resource_group" "FloodySeason" {
  name     = "Flood_Season"
  location = "West India"
}


