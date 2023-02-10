linux_vm_configs = {
  resource_group_name = "ozi-u7-np-rg-lths-d001"
  common_vm_settings = {
    subnet_name = "ozi-gu-np-sub002-u7-snt-lths-d001"
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-focal"
      sku       = "20_04-lts"
      version   = "latest"
    }
  }
  vms = [{
    hostname   = "zu7ilthslvd001"
    ip_address = "172.26.16.4"
    # load_balancing_configuration = {
    #   lb_backend_pool_name = "value"
    #   lb_name = "value"
    #   lb_resource_group_name = "value"
    # }
  }]
}