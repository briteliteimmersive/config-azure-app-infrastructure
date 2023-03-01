data_factory_configs = {
  resource_group_name = "ozi-u7-np-rg-fedp-d001"
  role_assignments = [
    {
      role_definition_id = "673868aa-7521-48a0-acc6-0f60742d39f5" ## Data Factory Contributor
      object_ids = [
        "7714c527-4a0d-4584-977b-f83c013cbab3" ## Fdp_Pwc
      ]
    }
  ]
  data_factories = [
    {
      name = "zu7fedpdfd001"
      identity = {
        type                = "SystemAssigned, UserAssigned"
        user_identity_names = ["umi-fedp-d001"]
      }
      keyvault_linked_services = [
        {
          key_vault_name = "zu7fedpkvd001"
        }
      ]
      adls_gen2_linked_services = [
        {
          storage_account_name = "oziu7npcsafedpd001"
        }
      ]
    }
  ]
}