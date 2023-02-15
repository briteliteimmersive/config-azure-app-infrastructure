linux_vm_configs = {
  resource_group_name = "ozi-u7-np-rg-lths-d001"
  common_vm_settings = {
    subnet_name = "ozi-gu-np-sub002-u7-snt-lths-d001"
    size        = "Standard_D2s_v3"
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
  vms = [
    ## CI/CD automation agent VM
#     {
#       subnet_name = "ozi-gu-np-sub002-u7-snt-infr-n001"
#       hostname   = "zu7idvoplvd001"
#       ip_address = "172.26.16.244"
#     },
    ## Litehouse VM
    {
      hostname   = "zu7ilthslvd001"
      ip_address = "172.26.16.4"
    },
  ]
}
