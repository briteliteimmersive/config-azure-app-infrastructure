storage_acc_configs = {
  resource_group_name = "ozi-u7-np-rg-fedp-d001"
  storage_accounts = [
    {
      name           = "oziu7npcsafedpd001"
      is_hns_enabled = true
      containers = [
        {
          name = "ci-pilot-poc"
        },
        {
          name = "fdp-raw"
        }
      ]
    },
    {
      name                = "oziu7npcsafedpd002"
      resource_group_name = "ozi-u7-np-rg-fedp-d002"
      file_shares = [{
        name  = "ftp-drop"
        quota = 5
      }]
    }
  ]
}
