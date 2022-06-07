resource "random_string" "random_suffix" {
  length           = 6
  lower            = true
  upper            = false
  special          = false
}

locals {
  suffix = random_string.random_suffix.result
}

resource "azurerm_resource_group" "main" {
  name     = "rg-observability-${local.suffix}"
  location = var.primary_location
}
