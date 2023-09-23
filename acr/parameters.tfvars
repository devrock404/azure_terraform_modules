resource_group_name = "my-resource-group"
location = "East US"
acr_name = "myacr20230922"

tags = {
  environment = "production"
  department = "IT"
  project = "my-project"
}

geo_replication = [
  {
    location = "Central US"
    zone_redundancy_enabled = true
    regional_endpoint_enabled=true
    tags                    = {
      environment = "production"
      department = "IT"
      project = "my-project"
    }
  },
  {
    location = "North Europe"
    zone_redundancy_enabled = true
    regional_endpoint_enabled=true
    tags                    = {
      environment = "production"
      department = "IT"
      project = "my-project"
    }
  }
]