resource "azurerm_service_plan" "example" {
  name                = "example"
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = var.sku_name
}

resource "random_integer" "ri" {
  min = 10000
  max = 99999
}

resource "azurerm_linux_web_app" "example" {
  name                = "${var.app_name_prefix}-${random_integer.ri.result}"
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.example.id

  site_config {
    application_stack {
      node_version = "18-lts"
    }
  }
}

resource "azurerm_linux_web_app_slot" "example" {
    app_service_id = azurerm_linux_web_app.example.id
  for_each            = toset(var.slot_names)
  name                = each.value
  
  site_config {
    application_stack {
      node_version = "18-lts"
    }    
  }
}

