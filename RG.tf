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
# 2 RG hain
resource "azurerm_resource_group" "RainySeason" {
  name     = "Baarish_Season"
  location = "central india"
}
resource "azurerm_resource_group" "FloodySeason" {
  name     = "Flood_Season"
  location = "Western India"
}