mssql_server_configs = {
  resource_group_name = "ozi-u7-np-rg-fedp-d001"
  role_assignments = [
      {
        role_definition_id = "b24988ac-6180-42a0-ab88-20f7382dd24c" ## Contributor
        object_ids = [
          "0608e07b-3be8-4227-b807-9ffd3d3b2297" ## Anish
        ]
      }
  
  ]
  servers = [{
    name = "ou7fedpsqd001"
    databases = [
      {
        name              = "ou7fedpsqd001-db01"
        sku_name          = "ElasticPool"
        elastic_pool_name = "dev-pool"
      }
    ]
    elastic_pools = [
      {
        name        = "dev-pool"
        max_size_gb = 4.8828125
        sku = {
          name     = "BasicPool"
          tier     = "Basic"
          capacity = 50
        }

        per_database_settings = {
          min_capacity = 0
          max_capacity = 5
        }
      }
    ]
    azuread_administrator = {
      login_username = "abhagwat@ocvibe.com"
      object_id      = "0608e07b-3be8-4227-b807-9ffd3d3b2297" ## Anish
    }
  }]
  firewall_rules = [
    {
      name             = "ALLOW-PWC-US"
      start_ip_address = "155.201.0.0"
      end_ip_address   = "155.201.255.255"
    },
    {
      name : "ALLOW-PWC-UK-01"
      start_ip_address : "155.201.34.0"
      end_ip_address : "155.201.35.255"
    },
    {
      name : "ALLOW-PWC-UK-02"
      start_ip_address : "164.143.0.0"
      end_ip_address : "164.143.255.255"
    },
    {
      name : "ALLOW-PWC-UK-03"
      start_ip_address : "62.204.63.0"
      end_ip_address : "62.204.63.255"
    },
  ]
}
