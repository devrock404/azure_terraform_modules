variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Azure region to use."
  type        = string
}

variable "vnet_name" {
  description = "Subnet name"
  type        = string
}

variable "vnet_cidr"{
  description = "vnet cidr"
  type = list(string)
}

variable "tags" {
  description = "Resource tags"
  type        = map(string)
  default     = {}
}
