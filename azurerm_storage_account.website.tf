resource "azurerm_storage_account" "website" {
  #checkov:skip=CKV_AZURE_3: "Ensure that 'Secure transfer required' is set to 'Enabled'"
  #checkov:skip=CKV_AZURE_35: "Ensure default network access rule for Storage Accounts is set to deny"

  name                     = var.account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_kind             = "StorageV2"
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  min_tls_version          = "TLS1_2"

  static_website {
    error_404_document = "404.html"
    index_document     = "index.html"
  }
  tags = var.common_tags
}
