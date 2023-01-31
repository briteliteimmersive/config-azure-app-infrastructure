keyvault_configs = {
  resource_group_name = "ozi-u7-np-rg-fedp-d001"
  keyvaults = [{
    name     = "zu7fedpkvd001"
    sku_name = "premium"
  }]
  role_assigments = [{
    role_definition_id = "4633458b-17de-408a-b874-0445c86b69e6"
    object_ids = ["0608e07b-3be8-4227-b807-9ffd3d3b2297"]
  }]
}
