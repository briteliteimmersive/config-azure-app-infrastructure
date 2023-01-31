synapse_configs = {
  resource_group_name = "ozi-u7-np-rg-fedp-d001"
  firewall_rules = [
    {
      name = "ALLOW-PWC-US"
      start_ip_address = "155.201.0.0"
      end_ip_address = "155.201.255.255"
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
  ]
  workspaces = [{
    name                 = "zu7fedpsyd001"
    storage_account_name = "oziu7npcsafedpd001"
    customer_managed_key_name = "cmk-encryption"
    filesystem_name      = "fnb-data-dev"
    spark_pools = [
      {
        name             = "defaultpool"
        node_size_family = "MemoryOptimized"
        node_size        = "Small"
        auto_pause = {
          delay_in_minutes = 15
        }
        node_count = 3
      }
    ]
    workspace_role_assignments = [
      {
        role_name = "Synapse Administrator"
        object_id = "0608e07b-3be8-4227-b807-9ffd3d3b2297"
      }
    ]
  }]
}
