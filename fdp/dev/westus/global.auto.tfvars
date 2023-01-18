global_configs = {
      location = "westus"
  mandatory_tags = {
    app-id = "fedp"
    businessowner = "n/a"
    businessunit = "n/a"
    costcenter = "n/a"
    criticality = "1"
    environment = "dev"
    solution = "federated data platform"
    srid = "n/a"
    support-queue = "n/a"
  }
  app_network = {
    subnets = [ "ozi-gu-np-sub001-u7-snt-fedp-d001" ]
    vnet_name = "ozi-gu-np-sub001-u7-vnt-n001"
    vnet_resource_group_name = "ozi-u7-np-rg-infr-n001"
  }
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

#   role_assignments = [ {
#     object_ids = [ "value" ]
#     role_definition_id = "value"
#   } ]
}