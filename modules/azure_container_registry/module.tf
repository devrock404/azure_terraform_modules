module "rg" {
  source   = "./tf_resource_group"
  location = var.location
  rg_name  = var.resource_group_name
  tags     = var.tags
}

module "vnet" {
  source              = "./tf_vnet"
  vnet_name           = var.vnet_name
  location            = var.location
  resource_group_name = module.rg.resource_group_name
  vnet_cidr           = [local.vnet_cidr]
  tags                = var.tags
}

module "subnet" {
  source = "./tf_subnet"

  for_each             = { for subnet in local.subnets : subnet.name => subnet }
  subnet_name          = var.subnet_name
  resource_group_name  = module.rg.resource_group_name
  virtual_network_name = module.vnet.virtual_network_name
  subnet_cidr_list     = each.value.cidr

  service_endpoints = each.value.service_endpoints
}

module "acr" {
  source              = "./tf_acr"
  acr_name            = var.acr_name
  location            = var.location
  resource_group_name = module.rg.resource_group_name
  sku                 = "Premium"

  allowed_subnets = [
    for s in module.subnet : s.subnet_id
  ]

  tags = var.tags
}
