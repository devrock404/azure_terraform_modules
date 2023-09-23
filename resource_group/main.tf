module "rg" {
  source   = "./../modules/azure_resource_group/tf_resource_group"
  location = var.location
  rg_name  = var.resource_group_name
  tags     = var.tags
}
