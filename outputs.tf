output "resource_group_name" {
    value           = azurerm_resource_group.main.name
    description     = "Resource group has been created successsfully"
}

output "storage_account_name" {
    value           = azurerm_storage_account.main.name
    description     = "Storage Account has been created successsfully"
}

output "storage_account_id" {
    value           = azurerm_storage_account.main.id
    description     = " Storage ID has been created successsfully"
}