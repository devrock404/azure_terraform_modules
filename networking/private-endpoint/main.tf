module "private_endpoint" {
  source = "./../../modules/azure_networking/tf_private_endpoint" # Update with the actual path to your module

  privateEndpointName        = var.privateEndpointName
  location                  = var.location
  vnetName                  = var.vnetName
  subnet_id                 = var.subnet_id
  resource_group_name       = var.resource_group_name
  private_connection_resource_id = var.private_connection_resource_id
  subresource_names         = var.subresource_names
}