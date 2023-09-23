
module "subnet" {
  source = "./../../modules/azure_networking/tf_subnet"

  for_each             = { for subnet in local.subnets : subnet.name => subnet }
  subnet_name          = each.value.name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  subnet_cidr_list     = each.value.cidr

  service_endpoints = each.value.service_endpoints
}
