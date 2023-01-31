storage_acc_configs = {
  resource_group_name = "ozi-u7-np-rg-fedp-d001"
  storage_accounts = [{
    name           = "oziu7npcsafedpd001"
    is_hns_enabled = true
    containers     = [{
      name = "ci-pilot-poc"
    }]
  }]
  role_assignments = [{
    role_definition_id = "ba92f5b4-2d11-453d-a403-e96b0029c9fe" # Storage Blob Data Contributor
    object_ids         = [
      "6c24bd11-db94-4c10-9506-bf77e33e5c39" # rdendi@ocvibe.com
    ]
  }]
}
