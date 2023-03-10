global_configs = {
  location = "westus"
  mandatory_tags = {
    app-id        = "fedp"
    businessowner = "n/a"
    businessunit  = "n/a"
    costcenter    = "n/a"
    criticality   = "1"
    environment   = "dev"
    solution      = "federated data platform"
    srid          = "n/a"
    support-queue = "n/a"
  }
  app_network = {
    subnets                  = ["ozi-gu-np-sub001-u7-snt-fedp-d001"]
    vnet_name                = "ozi-gu-np-sub001-u7-vnt-n001"
    vnet_resource_group_name = "ozi-u7-np-rg-infr-n001"
  }
  network_rules = {
    public_ip_ranges = [
      "155.201.0.0/16",  ## PwC US
      "155.201.34.0/23", ## PwC UK
      "164.143.0.0/16",  ## PwC UK
      "62.204.63.0/24"   ## PwC UK
    ]
    subnet_ids = []
  }
  role_assignments = [
    {
      role_definition_id = "ba92f5b4-2d11-453d-a403-e96b0029c9fe" # Storage Blob Data Contributor
      object_ids = [
        "7714c527-4a0d-4584-977b-f83c013cbab3", ## Fdp_Pwc
        "ff7df4b8-4d60-4690-b379-859dbc204046", # Microsoft Customer Insights
        "840289cf-af62-4757-8005-2bdfd5b2779c"  ## Fnb_Pwc
      ]
    },
    {
      role_definition_id = "b86a8fe4-44ce-4948-aee5-eccb2c155cd7" # Key Vault Secrets Officer
      object_ids = [
        "7714c527-4a0d-4584-977b-f83c013cbab3", ## Fdp_Pwc
      ]
    },
    {
      role_definition_id = "0c867c2a-1d8c-454a-a3db-ab2ea1bdc8bb" ## Storage File Data SMB Share Contributor
      object_ids = [
        "0608e07b-3be8-4227-b807-9ffd3d3b2297" ## Anish
      ]
    },
    {
      role_definition_id = "81a9662b-bebf-436f-a333-f67b29880f12" ## Storage Account Key Operator Service Role
      object_ids = [
        "0608e07b-3be8-4227-b807-9ffd3d3b2297" ## Anish
      ]
    }
  ]
  central_log_analytics_workspace = {
    subscription_id     = "20aa675b-8108-4d16-9202-9ffe0c35cf57"
    name                = "zu7mhublop001"
    resource_group_name = "ozi-u7-gs-rg-mhub-p003"
  }
  #   deployment_agent = {
  #     subnet_name = "value"
  #     subscription_id = "value"
  #     vnet_name = "value"
  #     vnet_resource_group_name = "value"
  #   }
}
