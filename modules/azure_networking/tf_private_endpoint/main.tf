resource "azurerm_private_endpoint" "example" {
  name                = var.privateEndpointName
  location            = var.location
  resource_group_name = var.resource_group_name

  subnet_id = var.subnet_id #Reference the subnet created above

  private_service_connection {
    name                           = var.privateEndpointName
    private_connection_resource_id = var.private_connection_resource_id
    subresource_names              = var.subresource_names #["vault"]
    is_manual_connection           = false
  }
}