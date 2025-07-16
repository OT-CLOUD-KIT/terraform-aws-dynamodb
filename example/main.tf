module "naming" {
  source   = "git@github.com:OT-CLOUD-KIT/terraform-aws-naming.git?ref=dev"
  bu       = var.bu
  env      = var.env
  app      = var.app
  tenant   = var.tenant
  resource = var.resource
}

module "standard_tags" {
  source = "git@github.com:OT-CLOUD-KIT/terraform-aws-standard-tagging.git?ref=dev"

  bu      = var.bu
  program = var.program
  app     = var.app
  team    = var.team
  region  = var.region
  env     = var.env
}

module "dynamodb_table" {
  source                         = "../"
  environment                    = var.environment
  count                          = var.enable_dynamodb_table_resource == true ? 1 : 0
  region                         = var.region
  billing_mode                   = var.billing_mode
  read_capacity_main-table       = var.read_capacity_main-table
  write_capacity_main-table      = var.write_capacity_main-table
  hash_key                       = var.hash_key
  range_key                      = var.range_key
  bu                         = var.bu
  program                    = var.program
  team                       = var.team
  app                        = var.app
  env                        = var.env
  stream_enabled                 = var.stream_enabled
  stream_view_type               = var.stream_view_type
  ttl_enabled                    = var.ttl_enabled
  ttl_attribute_name             = var.ttl_attribute_name
  point_in_time_recovery_enabled = var.point_in_time_recovery_enabled
  attributes                     = var.attributes
  local_secondary_indexes        = var.local_secondary_indexes
  global_secondary_indexes       = var.global_secondary_indexes
}