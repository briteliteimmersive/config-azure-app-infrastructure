linux_apps_configs = {
  resource_group_name = "ozi-u7-np-rg-lths-d001"
  apps = [{
    service_plan = {
      name     = "zu7lthsapd001"
      sku_name = "S1"
    }
    function_apps = [{
      name                 = "zu7lthsfad001"
      storage_account_name = "oziu7npcsalthsd001"
      site_config = {
        application_stack = {
          node_version = 16
        }
      }
    }]
  }]
}