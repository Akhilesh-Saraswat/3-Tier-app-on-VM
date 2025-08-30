resource "azurerm_resource_group" "akhi_rg1" {
  for_each = var.rg_name
    name     = each.value.name
    location = each.value.location
    
}