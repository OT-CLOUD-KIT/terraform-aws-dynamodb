
module "dynamodb_table" {
  source                         = "git@github.com:OT-CLOUD-KIT/terraform-aws-dynamodb.git?ref=Feature"
  environment                    = var.environment
  count                          = var.enable_dynamodb_table_resource == true ? 1 : 0
  region                         = var.region
  billing_mode                   = var.billing_mode
  read_capacity_main-table       = var.read_capacity_main-table
  write_capacity_main-table      = var.write_capacity_main-table
  hash_key                       = var.hash_key
  range_key                      = var.range_key
  env = var.env
  app = var.app
  owner = var.owner
  stream_enabled                 = var.stream_enabled
  stream_view_type               = var.stream_view_type
  ttl_enabled                    = var.ttl_enabled
  ttl_attribute_name             = var.ttl_attribute_name
  point_in_time_recovery_enabled = var.point_in_time_recovery_enabled
  attributes                     = var.attributes
  local_secondary_indexes        = var.local_secondary_indexes
  global_secondary_indexes       = var.global_secondary_indexes
}