environment                    = "dev"
enable_dynamodb_table_resource = true
region                         = "us-east-1"
billing_mode                   = "PROVISIONED"
read_capacity_main-table       = 2
write_capacity_main-table      = 2
hash_key                       = "orderId"
range_key                      = "customerId"
stream_enabled                 = false
stream_view_type               = "NEW_AND_OLD_IMAGES"
ttl_enabled                    = false
ttl_attribute_name             = "ttl"
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


################# Naming Convension #####################

random_alphanumeric_len = 4

bu       = "ot"
app      = "bp"
env      = "d"
resource = "dynomodb"
tenant   = ""

special = false
upper   = false
number  = true

gen_no_of_names = 1

team    = "infra"
program = "ot"

