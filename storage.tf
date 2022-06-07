
resource "azurerm_storage_account" "primary" {

  name                     = "st${local.suffix}a"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}

resource "azurerm_storage_account" "secondary" {

  name                     = "st${local.suffix}b"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}
