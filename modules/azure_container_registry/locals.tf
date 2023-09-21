locals {
  vnet_cidr = "10.10.0.0/16"
  subnets = [
    {
      name              = "${var.subnet_name}-01"
      cidr              = ["10.10.0.0/24"]
      service_endpoints = ["Microsoft.ContainerRegistry"]
      nsg_name          = "my-${var.subnet_name}-subnet-nsg-01"
    },
    {
      name              = "${var.subnet_name}-02"
      cidr              = ["10.10.1.0/24"]
      service_endpoints = ["Microsoft.ContainerRegistry"]
      nsg_name          = "my-${var.subnet_name}-subnet-nsg-02"
    },
  ]
}