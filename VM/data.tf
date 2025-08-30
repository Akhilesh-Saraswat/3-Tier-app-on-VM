data "azurerm_network_interface" "net_front" {
  name                = "nic-frontend-akhi"
  resource_group_name = "akhi_rg1"

}
data "azurerm_network_interface" "net_backend" {
  name                = "nic-backend-akhi"
  resource_group_name = "akhi_rg1"

}
data "azurerm_key_vault_secret" "admin-login" {
  name                = "admin-login"
  key_vault_id        = data.azurerm_key_vault.kvi.id
}
data "azurerm_key_vault" "kvi" {
  name                = "akhi-key-vault"
  resource_group_name = "akhi_rg"
}
data "azurerm_key_vault_secret" "vm-password" {
  name                = "vm-password"
  key_vault_id        = data.azurerm_key_vault.kvi.id
}