
data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv" {
  name                       = var.key_vault_name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  sku_name                   = var.sku
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  enabled_for_deployment     = var.enabledForDeployment
  enabled_for_template_deployment = var.enabledForTemplateDeployment
  enabled_for_disk_encryption = var.enabledForDiskEncryption
  enable_rbac_authorization  = var.enableRbacAuthorization

  dynamic "access_policy" {
    for_each = var.access_policies
    content {
      object_id   = access_policy.value.object_id
      tenant_id   = access_policy.value.tenant_id

      key_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
    ]

    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
    ]

    certificate_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "ManageContacts",
      "ManageIssuers",
      "GetIssuers",
      "ListIssuers",
      "SetIssuers",
      "DeleteIssuers",
    ]
    }
  }

  network_acls {
    bypass         = var.networkAclsBypass
    default_action = var.networkAclsDefaultAction
    virtual_network_subnet_ids = var.subnet_ids
  }
}





