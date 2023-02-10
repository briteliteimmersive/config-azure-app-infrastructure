lb_configs = {
  resource_group_name = "ozi-u7-np-rg-lths-d001"
  load_balancers = [{
    name = "ozi-gu-np-sub001-lths-u7-lbi-d001"
    backend_address_pool = [{
      name = "lths-backend"
    }]
    frontend_ip_configuration = [{
      name = "backend-lths-u7-lbi-d001"
      private_ip_address            = "172.26.16.10"
      subnet_name = "ozi-gu-np-sub002-u7-snt-lths-d001"
    }]
    probes = [
#       {
#         name                = "test-probe"
#         interval_in_seconds = 10
#         number_of_probes    = 1
#         port                = 8080
#       }
    ]
  }]
}
