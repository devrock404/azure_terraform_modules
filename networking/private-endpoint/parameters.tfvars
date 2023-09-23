
### Private Endpoint ###

resource_group_name = "my-resource-group"
location = "East US"
privateEndpointName = "my-private-endpoint"
vnetName = "my-vnet"
subnet_id = "/subscriptions/fd7d53ef-e290-4ab1-937e-fec061c00132/resourceGroups/my-resource-group/providers/Microsoft.Network/virtualNetworks/my-vnet/subnets/my-subnet-02"
private_connection_resource_id = "/subscriptions/fd7d53ef-e290-4ab1-937e-fec061c00132/resourceGroups/my-resource-group/providers/Microsoft.KeyVault/vaults/mykeyvault20230922"
subresource_names = ["vault"]

### End Private Endpoint ###