variable "subscription_id" {
  description = "The name of the resource group."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The location where resources will be created."
  type        = string
}

variable "app_name_prefix" {
  description = "The prefix for the app service name."
  type        = string
}

variable "sku_name" {
  description = "The SKU name for the app service plan."
  type        = string
}

variable "slot_names" {
  description = "The names of the deployment slots."
  type        = list(string)
}
