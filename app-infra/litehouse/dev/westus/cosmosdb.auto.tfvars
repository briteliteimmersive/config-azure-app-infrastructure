cosmosdb_configs = {
  resource_group_name = "ozi-u7-np-rg-lths-d001"
  cosmosdb = [{
    name = "ou7lthsddd001"
    kind = "MongoDB"
    consistency_policy = {
      consistency_level       = "BoundedStaleness"
      max_interval_in_seconds = 300
      max_staleness_prefix    = 100000
    }
    mongodb_databases = [
      {
        name        = "lthsdb"
        collections = []
      }
    ]
  }]
}