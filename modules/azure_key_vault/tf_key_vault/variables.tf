variable "key_vault_name" {
  description = "Name of the key vault."
  type        = string
}

variable "sku" {
  description = "Name of the SKU."
  type        = string
}


variable "enabledForDeployment" {
  description="Boolean flag to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault."
  type=bool
}

variable "enabledForTemplateDeployment" {
  description="Boolean flag to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault."
  type=bool
}

variable "enabledForDiskEncryption" {
  description="Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys."
  type=bool
}

variable "enableRbacAuthorization" {
  description="Boolean flag to specify whether Azure Key Vault uses Role Based Access Control (RBAC) for authorization of data actions."
  type=bool
}

variable "networkAclsBypass" {
  description = "Specifies which traffic can bypass the network rules"
  type = string
}

variable "networkAclsDefaultAction" {
  description = "The Default Action to use when no rules match from ip_rules / virtual_network_subnet_ids"
  type = string
}

variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Azure region to use."
  type        = string
}

variable "subnet_ids"{
  description = "Subnet IDs which should be able to access this Key Vault."
  type  = list(string)
  default=[]
}

variable "access_policies" {
  type    = list(object({
    object_id            = string
    tenant_id            = string
  }))
  default = []
}

variable "purge_protection_enabled"{
 description="Purge Protection enabled for this Key Vault."
 type=bool
 default=true
}

variable "public_network_access_enabled"{
   description=" public network access is allowed for this Key Vault"
 type=bool
 default=false
}