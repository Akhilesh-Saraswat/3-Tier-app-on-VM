data "azurerm_subnet" "subnets" {
  name                 = "AzureBastionSubnet"
  virtual_network_name = "akhiVnet"
  resource_group_name  = "akhi_rg1"
}

data "azurerm_public_ip" "ips" {
  name                = "bastion-public-ip"
  resource_group_name = "akhi_rg1"
}