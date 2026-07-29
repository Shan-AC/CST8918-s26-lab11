resource "azurerm_resource_group" "app_rg" {
  name     = "jian0147-a11-rg"
  location = "westus3"
}

output "resource_group_name" {
  value = azurerm_resource_group.app_rg.name
}