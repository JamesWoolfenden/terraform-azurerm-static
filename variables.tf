variable "resource_group_name" {
  description = "Name of resource group in which to deploy storage account."
  type        = string
  default     = "marvel"
}

variable "location" {
  type        = string
  description = "Azure Region to use, defaults to UK South"
  default     = "UK South"
}

variable "account_tier" {
  description = "(Required) Defines the Tier to use for this storage account. Valid options are Standard and Premium. Changing this forces a new resource to be created"
  default     = "Standard"
}

variable "account_replication_type" {
  description = "(Required) Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS and ZRS"
  default     = "LRS"
}

variable "common_tags" {
  type        = map
  description = "A map of tags"
}

variable "account_name" {
  type        = string
  description = "Name of the storage account"
  default     = "marvelsa"
}
