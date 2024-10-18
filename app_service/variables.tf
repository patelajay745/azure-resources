variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resources"
  type        = string
}

variable "app_name_prefix" {
  description = "Prefix for the app service name"
  type        = string
  
}

variable "sku_name" {
  description = "The SKU name for the service plan"
  type        = string
  default     = "P0v3"
}

variable "slot_names" {
  description = "List of slot names to create"
  type        = list(string)
  default     = ["staging"]
}
