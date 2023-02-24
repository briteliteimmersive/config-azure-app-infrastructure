cdn_configs = {
  resource_group_name = "ozi-u7-np-rg-lths-d001"
  cdn = [{
    name = "zu7lthscdd001"
    sku  = "Standard_Microsoft"
    endpoints = [{
      name = "litehouse-dev"
      origin = {
        name      = "litehouse-dev-storage"
        host_name = "oziu7npcsalthsd001.blob.core.windows.net"
      }
    }]
  }]
}
