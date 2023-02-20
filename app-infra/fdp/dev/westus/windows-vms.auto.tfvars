windows_vm_configs = {
  resource_group_name = "ozi-u7-np-rg-fedp-d002"
  common_vm_settings = {
    subnet_name = "ozi-gu-np-sub001-u7-snt-fedp-d001"
  }
  vms = [{
    ## FDP FTP server
    hostname   = "zu7ifedpwvd001"
    ip_address = "172.26.12.4"
    tags       = {
      "server" = "ftp"
    }
  }]
}
