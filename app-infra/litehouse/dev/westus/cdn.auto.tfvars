cdn_configs = {
  resource_group_name = "ozi-u7-np-rg-lths-d001"
  cdn = [{
    name = "zu7lthscdd001"
    sku  = "Standard_Microsoft"
    # endpoints = [{
    #   name = "temp-testep"
    #   origin = {
    #     name      = "test"
    #     host_name = "oziu7npcsafedpx003.blob.core.windows.net"
    #   }
    #   geo_filter = {
    #     action        = "Allow"
    #     country_codes = ["US"]
    #     relative_path = "/"
    #   }
    # }]
  }]
}