output "app_service_name" {
  description = "The name of the App Service"
  value       = azurerm_linux_web_app.example.name
}
