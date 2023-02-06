synapse_configs = {
  resource_group_name = "ozi-u7-np-rg-fedp-d001"
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
  workspaces = [{
    name                      = "zu7fedpsyd001"
    storage_account_name      = "oziu7npcsafedpd001"
    customer_managed_key_name = "cmk-encryption"
    filesystem_name           = "fnb-data-dev"
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
        object_ids = [
          "0608e07b-3be8-4227-b807-9ffd3d3b2297" ## Anish
        ]
      },
      {
        role_name = "Synapse Contributor"
        object_ids = [
          "7714c527-4a0d-4584-977b-f83c013cbab3", ## Fdp_Pwc
          "840289cf-af62-4757-8005-2bdfd5b2779c"  ## Fnb_Pwc
        ]
      },
      {
        role_name = "Synapse Credential User"
        object_ids = [
          "7714c527-4a0d-4584-977b-f83c013cbab3", ## Fdp_Pwc
          "840289cf-af62-4757-8005-2bdfd5b2779c"  ## Fnb_Pwc
        ]
      }
    ]
    workspace_linked_services = [
      {
        resource_name = "zu7fedpkvd001"
        type          = "AzureKeyVault"
        type_properties = {
          baseUrl = "https://zu7fedpkvd001.vault.azure.net/"
        }
      }
    ]
  }]
}
