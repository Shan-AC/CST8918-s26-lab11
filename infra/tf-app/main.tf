resource "azurerm_resource_group" "app_rg" {
  name     = "he000145-a11-rg"
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = "jian0147-a11-vnet"
  resource_group_name = azurerm_resource_group.app_rg.name
  location            = azurerm_resource_group.app_rg.location
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
  name                 = "jian0147-a11-subnet"
  resource_group_name  = azurerm_resource_group.app_rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}