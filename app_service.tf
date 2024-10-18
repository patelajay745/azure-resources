module "app_service" {
  source              = "./app_service"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  app_name_prefix     = var.app_name_prefix
  sku_name            = var.sku_name
  slot_names          = var.slot_names
}
