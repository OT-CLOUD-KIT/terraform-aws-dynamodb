# DynamoDB table

* A table is a collection of items, and each item is a collection of attributes. 
* DynamoDB uses primary keys to uniquely identify each item in a table and secondary indexes to provide more querying flexibility. 

## Usage


```hcl
module "dynamodb_table" {
  source                                 = "./Dynamodb-module"
  environment                            = var.environment
  count                                  = var.enable_dynamodb_table_resource == true ? 1 : 0
  table_name                             = var.table_name
  region                                 = var.region
  billing_mode                           = var.billing_mode
  read_capacity_main-table               = var.read_capacity_main-table
  write_capacity_main-table              = var.write_capacity_main-table
  hash_key                               = var.hash_key
  range_key                              = var.range_key
  type                                   = var.type
  attribute1_name                        = var.attribute1_name
  attribute2_name                        = var.attribute2_name
  attribute3_name                        = var.attribute3_name
  name_local_secondary_index             = var.name_local_secondary_index
  local_secondary_index_range_key        = var.local_secondary_index_range_key
  projection_type_local_secondary_index  = var.projection_type_local_secondary_index
  name_global_secondary_index            = var.name_global_secondary_index
  global_secondary_index_hash_key        = var.global_secondary_index_hash_key
  global_secondary_index_range_key       = var.global_secondary_index_range_key
  write_capacity_global_secondary_index  = var.write_capacity_global_secondary_index
  read_capacity_global_secondary_index   = var.read_capacity_global_secondary_index
  projection_type_global_secondary_index = var.projection_type_global_secondary_index
  

}

```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| attributes | Additional attributes (e.g. `policy` or `role`) | list(string) | "orderId" "customerId" "Shipped" | no |
| name_local_secondary_index | local secondary indexes in the form of a string of mapped values | string | "lsi-orderId-customerId" | yes |
| name_global_secondary_index | global secondary indexes in the form of a string  | string | "gsi-shipped" | yes |
| local_secondary_index_range_key | local secondary indexes  range key in the form of a string  | string | "customerId" | yes |
| global_secondary_index_hash_key | global secondary indexes hash key in the form of a string  | string |  "orderId" | yes |
| write_capacity_global_secondary_index | write capacity of global secondary index in the form of a number | number | 1 | yes |
| read_capacity_global_secondary_index | read capacity of global secondary index in the form of a number | number | 1 | yes |
|projection_type_local_secondary_index | projection type of local secondary index in the form of a string | string | "ALL" | yes |
|projection_type_global_secondary_index | projection type of global secondary index in the form of a string | string | "ALL" | yes |
| hash_key | DynamoDB table Hash Key | string | "orderId" | yes |
| hash_key_type | Hash Key type, which must be a scalar type: `S`, `N`, or `B` for (S)tring, (N)umber or (B)inary data | string | `S` | yes |
| billing_mode| billing mode required in the form of a string | string |"PROVISIONED"| no |
| table_name | table Name  | string | "shipping" | yes |
| range_key | DynamoDB table Range Key | string | "customerId"| yes |
| range_key_type | Range Key type, which must be a scalar type: `S`, `N`, or `B` for (S)tring, (N)umber or (B)inary data | string | `S` | yes |
| environment | environment required in the form of a string| string | "dev" | yes |
| tags | Additional tags (e.g. map(`BusinessUnit`,`XYZ`) | map(string) | `<map>` | yes |

## Outputs

These defined outputs that can be used within the same service and terraform release.

| Name | Description |
|------|-------------|
| table_name | name of the model Dynamodb Table created |
| main-table-arn | arn of the model Dynamodb Table created |
| main-table-id | id of the model Dynamodb Table created |

## Contributors

![Screenshot from 2022-08-29 19-22-02](https://user-images.githubusercontent.com/98826875/187217251-942a73a9-2280-453d-9c47-28112cb9c4fb.png)

Shristi Gupta 


