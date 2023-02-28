storage_acc_configs = {
  resource_group_name = "ozi-u7-np-rg-fedp-d001"
  storage_accounts = [
    {
      name           = "oziu7npcsafedpd001"
      is_hns_enabled = true
      sftp_enabled   = true
      containers = [
        {
          name = "ci-pilot-poc"
        },
        {
          name = "fdp-raw"
        },
        {
          name = "yinzcam-dropzone"
        }
      ]
      file_shares = [
        {
          name  = "erp-dropzone"
          quota = 50
        }
      ]
      local_users = [
        {
          name = "yinzcamupload"
          permission_scope = [
            {
              resource_name = "yinzcam-dropzone"
              service       = "blob"
              permissions = {
                create = true
                delete = true
                list   = true
                write  = true
                read   = true
              }
            }
          ]

        }
      ]
    },
  ]
}
