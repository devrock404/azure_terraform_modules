resource_group_name = "my-resource-group"
location = "East US"

tags = {
  environment = "production"
  department = "IT"
  project = "my-project"
}


### Key Vault Configuration ###
key_vault_name = "mykeyvault20230922"
sku = "standard"
enabledForDeployment = true
enabledForTemplateDeployment = true
enabledForDiskEncryption = true
enableRbacAuthorization = true
networkAclsBypass = "AzureServices"
networkAclsDefaultAction = "Deny"

# Subnet IDs
subnet_ids = [
  "/subscriptions/fd7d53ef-e290-4ab1-937e-fec061c00132/resourceGroups/my-resource-group/providers/Microsoft.Network/virtualNetworks/my-vnet/subnets/my-subnet-02",
  
]

# Access Policies
access_policies = [
  #{
  #  object_id = "user-object-id-1"
  #  tenant_id = ""
  #}
]
### END Key vault Configuration ###
