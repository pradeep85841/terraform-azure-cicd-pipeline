terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "b1f95535-100e-4e15-abff-3ca8bdfd9bb9"
  tenant_id       = "96ca3f2a-4cd6-4d1e-bbf5-f4abb87339bd"
}
