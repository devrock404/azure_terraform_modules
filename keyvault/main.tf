module "key_vault" {
  source = "./../modules/azure_key_vault/tf_key_vault" 
  key_vault_name               = var.key_vault_name
  sku                          = var.sku
  
  enabledForDeployment          = var.enabledForDeployment
  enabledForTemplateDeployment = var.enabledForTemplateDeployment
  enabledForDiskEncryption     = var.enabledForDiskEncryption
  enableRbacAuthorization      = var.enableRbacAuthorization
  networkAclsBypass            = var.networkAclsBypass
  networkAclsDefaultAction     = var.networkAclsDefaultAction
  resource_group_name          = var.resource_group_name
  location                     = var.location
  subnet_ids                   = var.subnet_ids
  access_policies              = var.access_policies
}