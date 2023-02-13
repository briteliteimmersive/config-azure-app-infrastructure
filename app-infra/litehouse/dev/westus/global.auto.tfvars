global_configs = {
  location = "westus"
  mandatory_tags = {
    app-id        = "lths"
    businessowner = "n/a"
    businessunit  = "n/a"
    costcenter    = "n/a"
    criticality   = "1"
    environment   = "dev"
    solution      = "Litehouse"
    srid          = "n/a"
    support-queue = "n/a"
  }
  app_network = {
    subnets                  = ["ozi-gu-np-sub002-u7-snt-lths-d001"]
    vnet_name                = "ozi-gu-np-sub002-u7-vnt-n001"
    vnet_resource_group_name = "ozi-u7-np-rg-infr-n001"
  }
  network_rules = {
    public_ip_ranges = [
      "155.201.0.0/16", ## PwC US
    ]
    subnet_ids = []
  }
  role_assignments = [
    {
      role_definition_id = "0663725c-fd2f-567b-bb4c-fbb65771a97b" ## Application Developer Role
      object_ids = [
        "7714c527-4a0d-4584-977b-f83c013cbab3", ## Fdp_Pwc
        "7c0b1757-e9a3-4efb-8d35-05f237773f97", ## mveloso@ocvibe.com
        "295f70b2-ed69-42d3-bd76-c1bb9be7cefe"  ## riyer@ocvibe.com
      ]
    },
  ]
  #   central_log_analytics_workspace = {
  #     name = "value"
  #     resource_group_name = "value"
  #     subscription_id = "value"
  #   }
  #   deployment_agent = {
  #     subnet_name = "value"
  #     subscription_id = "value"
  #     vnet_name = "value"
  #     vnet_resource_group_name = "value"
  #   }
}
