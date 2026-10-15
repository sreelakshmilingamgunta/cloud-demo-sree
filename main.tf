resource "azurerm_resource_group" "example" {
  name     = var.rg-name-workspace
  location = "West US 3"

  tags = {
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}

output "resource_group_name" {
  value = azurerm_resource_group.example.name
}

output "resource_group_id" {
  value = azurerm_resource_group.example.id
}
