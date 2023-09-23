module "acr" {
  source              = "./../modules/azure_container_registry/tf_acr"
  acr_name            = var.acr_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Premium"

  allowed_subnets = []
  geo_replication = var.geo_replication
  public_network_access_enabled =false
  tags = var.tags
}
