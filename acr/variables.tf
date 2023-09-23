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


variable "tags" {
  description = "Resource tags"
  type        = map(string)
  default     = {}
}
