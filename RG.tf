terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}
# terraform {
 # backend "azurerm" {
  #  resource_group_name  = "Agrawest"
   # storage_account_name = "aug15"
  # container_name       = "stg"
   # key                  = "git.tfstate"
  # subscription_id      = "5e4fafbb-ef69-4e17-8835-68030d81f758"
#  }
#}
resource "azurerm_storage_container" "stg" {
  name                  = "stg"
  storage_account_id    = azurerm_storage_account.aug.id
  container_access_type = "private" 
}
# new changes done
provider "azurerm" {
  features {}
  subscription_id = "5e4fafbb-ef69-4e17-8835-68030d81f758"
}
# 3 RG hain
resource "azurerm_resource_group" "Agra" {
  name     = "Agrawest"
  location = "West india"
}
resource "azurerm_resource_group" "RainySeason" {
  name     = "Baarish_Season"
  location = "central india"
}
resource "azurerm_resource_group" "FloodySeason" {
  name     = "Flood_Season"
  location = "West India"
}
# 1 Storage account
resource "azurerm_storage_account" "aug" {
  name                     = "aug15"
  resource_group_name      = azurerm_resource_group.Agra.name
  location                 = azurerm_resource_group.Agra.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
    environment = "staging"
  }
}



