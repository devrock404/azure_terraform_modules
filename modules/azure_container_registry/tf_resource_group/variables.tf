variable "location" {
  description = "Azure region to use."
  type        = string
}

variable "rg_name" {
  description = "Client name/account used in naming."
  type        = string
}

variable "lock_level" {
  description = "Specifies the Level to be used for this RG Lock. Possible values are Empty (no lock), `CanNotDelete` and `ReadOnly`."
  type        = string
  default     = ""
}

variable "tags" {
  description = "Resource tags"
  type        = map(string)
  default     = {}
}
