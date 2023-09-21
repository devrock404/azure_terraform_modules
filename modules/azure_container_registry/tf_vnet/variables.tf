variable "location" {
  description = "Azure region to use"
  type        = string
}

variable "vnet_name" {
  description = "Project stack name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "vnet_cidr" {
  description = "The address space that is used by the virtual network"
  type        = list(string)
}

variable "dns_servers" {
  description = "List of IP addresses of DNS servers"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Resource tags"
  type        = map(string)
  default     = {}
}
