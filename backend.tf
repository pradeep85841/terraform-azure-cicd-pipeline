terraform {
  backend "azurerm" {
    resource_group_name  = "rg-dev-iac"
    storage_account_name = "terraformstate85841" # must be unique globally
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
