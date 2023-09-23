module "vnet" {
  source              = "./../../modules/azure_networking/tf_vnet"
  vnet_name           = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  vnet_cidr           = var.vnet_cidr
  tags                = var.tags
}
