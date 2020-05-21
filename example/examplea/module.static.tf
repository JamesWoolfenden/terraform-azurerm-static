module "static" {
  source              = "../../"
  common_tags         = var.common_tags
  resource_group_name = azurerm_resource_group.marvel.name
}
