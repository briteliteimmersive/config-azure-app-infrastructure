mssql_server_configs = {
  resource_group_name = "ozi-u7-np-rg-fedp-d001"
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
  }]
  firewall_rules = [{
    name             = "ALLOW-PWC-US"
    start_ip_address = "155.201.0.0"
    end_ip_address   = "155.201.255.255"
  }]
}
