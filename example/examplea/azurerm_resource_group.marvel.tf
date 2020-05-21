resource "azurerm_resource_group" "marvel" {
  name     = var.resource_group_name
  location = var.location
}
