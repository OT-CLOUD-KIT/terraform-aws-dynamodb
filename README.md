# DynamoDB table

[![Opstree Solutions][opstree_avatar]][opstree_homepage]<br/>[Opstree Solutions][opstree_homepage] 

  [opstree_homepage]: https://opstree.github.io/
  [opstree_avatar]: https://img.cloudposse.com/200x100/https://www.opstree.com/images/og_image8.jpg

* A table is a collection of items, and each item is a collection of attributes. 
* DynamoDB uses primary keys to uniquely identify each item in a table and secondary indexes to provide more querying flexibility. 

## Usage


```hcl
module "dynamodb_table" {
  source                                 = "git::https://github.com/OT-CLOUD-KIT/terraform-aws-dynamodb.git"
  environment                            = var.environment
  count                                  = var.enable_dynamodb_table_resource == true ? 1 : 0
  table_name                             = var.table_name
  region                                 = var.region
  billing_mode                           = var.billing_mode
  read_capacity_main-table               = var.read_capacity_main-table
  write_capacity_main-table              = var.write_capacity_main-table
  hash_key                               = var.hash_key
  range_key                              = var.range_key
  stream_enabled                         = var.stream_enabled
  stream_view_type                       = var.stream_view_type
  ttl_enabled                            = var.ttl_enabled
  ttl_attribute_name                     = var.ttl_attribute_name
  point_in_time_recovery_enabled         = var.point_in_time_recovery_enabled
  attributes                             = var.attributes
  local_secondary_indexes                = var.local_secondary_indexes
  global_secondary_indexes               = var.global_secondary_indexes
  tags                                   = var.tags

}

```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| attributes | Additional attributes (e.g. `policy` or `role`) | `list(string)` | `"orderId" "customerId" "Shipped"` | yes |
| write_capacity_main-table | write capacity of mian table in the form of a number | `number` | `2` | yes |
| read_capacity_main-table| read capacity of main table in the form of a number | `number` | `2` | yes ||
| hash_key | DynamoDB table Hash Key | `string` | `orderId` | yes |
| hash_key_type | Hash Key type, which must be a scalar type: `S`, `N`, or `B` for (S)tring, (N)umber or (B)inary data | `string` | `S` | yes |
| billing_mode| billing mode required in the form of a string | `string` |`"PROVISIONED"`| no |
| table_name | table Name  | `string` | `shipping` | yes |
| range_key | DynamoDB table Range Key | `string` | `customerId`| yes |
| range_key_type | Range Key type, which must be a scalar type: `S`, `N`, or `B` for (S)tring, (N)umber or (B)inary data | `string` | `S` | yes |
| stream_enabled | stream enabled, yes or no in form of a bool  | `bool` | `false` | yes |
| stream_view_type | stream view type in form of a string  | `string` | `"NEW_AND_OLD_IMAGES"` | yes |
| ttl_enabled | ttl enabled, yes or no in form of a bool  | `bool` | `false` | yes |
| ttl_attribute_name | ttl attribute name, in form of a string  | `string`|  `"ttl"` | yes |
| point_in_time_recovery_enabled | point_in_time_recovery_enabled , yes or no in form of a bool  | `bool` | `false` | yes |
| local_secondary_indexes | local secondary indexes in the form of any  | `any` | `name = "lsi-orderId-customerId"`, <br> `range_key = "customerId"`, <br>  `projection_type   = "ALL"`, <br>  `non_key_attributes = []`| yes |
| global_secondary_indexes | global secondary indexes in the form of any  | `any` | `name = "TitleIndex"`,<br> `hash_key = "orderId"`,<br> `range_key = "shipped"`,<br> `projection_type = "ALL"`,<br> `read_capacity = 5`,<br> `write_capacity = 5`,<br> `non_key_attributes = []`| yes |
| environment | environment required in the form of a string| `string` | `"dev"` | yes |
| tags | Additional tags (e.g. map(`BusinessUnit`,`XYZ`) | `map(string)` | `<map>` | yes |

## Outputs

These defined outputs that can be used within the same service and terraform release.

| Name | Description |
|------|-------------|
| table_name | name of the model Dynamodb Table created |
| main-table-arn | arn of the model Dynamodb Table created |
| main-table-id | id of the model Dynamodb Table created |

## Contributors

![Screenshot from 2022-08-31 11-15-32](https://user-images.githubusercontent.com/98826875/187603118-a9bf0285-01f9-409e-9752-2fec11bc551b.png)


[Shristi Gupta][shristi_homepage]

  [shristi_homepage]: https://gitlab.com/shristi.gupta

  