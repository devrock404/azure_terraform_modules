variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Azure region to use."
  type        = string
}

variable "acr_name" {
  description = "Project environment."
  type        = string
}

variable "geo_replication" {
  type    = list(object({
    location = string
    zone_redundancy_enabled = bool
    regional_endpoint_enabled = bool
    tags                    = map(string)
  }))
  default = []
}

variable "tags" {
  description = "Resource tags"
  type        = map(string)
  default     = {}
}
