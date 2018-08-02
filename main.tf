provider "azurerm" {
  subscription_id = "${var.subscription_id}"
}

resource "azurerm_resource_group" "AzureRG" {
  name = "resource-group"
  location = "${var.location}"
}
