environment                    = "dev"
enable_dynamodb_table_resource = true
table_name                     = "shri"
region                         = "us-east-1"
billing_mode                   = "PROVISIONED"
read_capacity_main-table       = 2
write_capacity_main-table      = 2
hash_key                       = "orderId"
range_key                      = "customerId"
stream_enabled                 = false
stream_view_type               = ""
ttl_enabled                    = false
ttl_attribute_name             = ""
point_in_time_recovery_enabled = false
attributes = [
  {
    name = "orderId"
    type = "S"
  },
  {
    name = "customerId"
    type = "S"
  },
  {
    name = "shipped"
    type = "S"
  }

]
local_secondary_indexes = [
  {
    name               = "lsi-orderId-customerId"
    range_key          = "customerId"
    projection_type    = "ALL"
    non_key_attributes = []

  }
]
global_secondary_indexes = [
  {
    name               = "TitleIndex"
    hash_key           = "orderId"
    range_key          = "shipped"
    projection_type    = "ALL"
    read_capacity      = 5
    write_capacity     = 5
    non_key_attributes = []
  }
]
tags = {
  "team" : "devops"
  "service" : "dynamodb"
}