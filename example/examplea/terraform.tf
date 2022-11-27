terraform {
  required_providers {
    azurerm = {
      version = "3.32.0"
      source  = "hashicorp/azurerm"
    }
    template = {
      source  = "hashicorp/template"
      version = "2.2.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
  }
  required_version = ">= 1.3"
}
