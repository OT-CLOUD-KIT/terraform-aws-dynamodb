
resource "aws_dynamodb_table" "main-table" {
  name           = var.table_name
  billing_mode   =  var.billing_mode
  read_capacity  =  var.read_capacity_main-table
  write_capacity =  var.write_capacity_main-table
  hash_key       =  var.hash_key
  range_key      =  var.range_key


  attribute {
    name =  var.attribute1_name
    type =  var.type
  }

  attribute {
    name =  var.attribute2_name
    type =  var.type
  }

  attribute {
    name =  var.attribute3_name
    type =  var.type
  }


  local_secondary_index {
    name            =  var.name_local_secondary_index
    range_key       =  var.local_secondary_index_range_key
    projection_type =   var.projection_type_local_secondary_index
  }

  global_secondary_index {
    name            = var.name_global_secondary_index
    hash_key        = var.global_secondary_index_hash_key
    range_key       = var.global_secondary_index_range_key
    write_capacity  = var.write_capacity_global_secondary_index
    read_capacity   = var.read_capacity_global_secondary_index
    projection_type =  var.projection_type_global_secondary_index
    
  }


  tags = {
    Name        = "${var.table_name}-${var.environment}"
    Environment =  var.environment
  }
}