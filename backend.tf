terraform {
  backend "azurerm" {
    resource_group_name  = "rg-dev-iac"
    storage_account_name = "xxx" # must be unique globally
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
