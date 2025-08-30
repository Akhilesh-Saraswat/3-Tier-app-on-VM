terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
}
# Terraform Provider Block
provider "azurerm" {
  features {}
  subscription_id = "799b8ac2-95c2-49ae-bf18-9a3bf3936b19"
}
# terraform {
#   backend "azurerm" {
#     resource_group_name  = "akhi_rg"
#     storage_account_name = "akhistg321"
#     container_name       = "akhicnt321"
#     key                  = "terraform.tfstate"

#   }
#  }