provider "azurerm" {
  subscription_id = "${var.subscription_id}"
}

resource "azurerm_resource_group" "AzureRG" {
  name = "resource-group"
  location = "${var.location}"
}

resource "azurerm_storage_account" "AzureSA" {
  name = "createnewstorageaccount"
  resource_group_name = "${azurerm_resource_group.AzureRG.name}"
  location = "${var.location}"
  account_tier = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "container1" {
  name = "container1"
  resource_group_name = "${azurerm_resource_group.AzureRG.name}"
  storage_account_name = "${azurerm_storage_account.AzureSA.name}"
  container_access_type = "private"
}
