# DynamoDB table

* A table is a collection of items, and each item is a collection of attributes. 
* DynamoDB uses primary keys to uniquely identify each item in a table and secondary indexes to provide more querying flexibility. 

## Providers

| Name                                              | Version  |
|---------------------------------------------------|----------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.82.2   |
| <a name="terraform_module"></a> [Terraform](Terraform\module) | >= 1.12.1|


## Architecture
<img width="1219" height="598" alt="Screenshot from 2025-07-16 14-20-19" src="https://github.com/user-attachments/assets/73ac5937-da6f-4e4e-b6f2-acc8fc42e8f0" />


___

## Usage


```hcl
module "dynamodb_table" {
  source                         = "OT-CLOUD-KIT/terraform-aws-dynamodb"
  count                          = 1
  region                         = "us-east-1"
  billing_mode                   = "PROVISIONED"
  read_capacity_main_table       = 2
  write_capacity_main_table      = 2
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
}

```
> **Note:**  
> The above example demonstrates how to use the module. All variables, resources, and outputs used here are already defined within this module.

___

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attributes"></a> [attributes](#input_attributes) | List of attributes for the table | `list(object)` | `[]` | yes |
| <a name="input_write_capacity_main_table"></a> [write_capacity_main_table](#input_write_capacity_main_table) | Write capacity of main table | `number` | `2` | yes |
| <a name="input_read_capacity_main_table"></a> [read_capacity_main_table](#input_read_capacity_main_table) | Read capacity of main table | `number` | `2` | yes |
| <a name="input_hash_key"></a> [hash_key](#input_hash_key) | DynamoDB hash key name | `string` | `"orderId"` | yes |
| <a name="input_hash_key_type"></a> [hash_key_type](#input_hash_key_type) | Hash key type (`S`, `N`, or `B`) | `string` | `"S"` | yes |
| <a name="input_billing_mode"></a> [billing_mode](#input_billing_mode) | Billing mode (`PROVISIONED` or `PAY_PER_REQUEST`) | `string` | `"PROVISIONED"` | no |
| <a name="input_table_name"></a> [table_name](#input_table_name) | Name of the DynamoDB table | `string` | `"shipping"` | yes |
| <a name="input_range_key"></a> [range_key](#input_range_key) | DynamoDB range key name | `string` | `"customerId"` | yes |
| <a name="input_range_key_type"></a> [range_key_type](#input_range_key_type) | Range key type (`S`, `N`, or `B`) | `string` | `"S"` | yes |
| <a name="input_stream_enabled"></a> [stream_enabled](#input_stream_enabled) | Whether to enable streams | `bool` | `false` | yes |
| <a name="input_stream_view_type"></a> [stream_view_type](#input_stream_view_type) | Stream view type | `string` | `"NEW_AND_OLD_IMAGES"` | yes |
| <a name="input_ttl_enabled"></a> [ttl_enabled](#input_ttl_enabled) | Enable TTL (Time to Live) | `bool` | `false` | yes |
| <a name="input_ttl_attribute_name"></a> [ttl_attribute_name](#input_ttl_attribute_name) | TTL attribute name | `string` | `"ttl"` | yes |
| <a name="input_point_in_time_recovery_enabled"></a> [point_in_time_recovery_enabled](#input_point_in_time_recovery_enabled) | PITR enabled | `bool` | `false` | yes |
| <a name="input_local_secondary_indexes"></a> [local_secondary_indexes](#input_local_secondary_indexes) | Local Secondary Indexes | `any` | `[...]` | yes |
| <a name="input_global_secondary_indexes"></a> [global_secondary_indexes](#input_global_secondary_indexes) | Global Secondary Indexes | `any` | `[...]` | yes |
| <a name="input_environment"></a> [environment](#input_environment) | Environment label (e.g., `dev`) | `string` | `"dev"` | yes |
| <a name="input_tags"></a> [tags](#input_tags) | Tags for resources | `map(string)` | `{}` | yes |


## Outputs

| Name | Description |
|------|-------------|
| <a name="output_table_name"></a> [table_name](#output_table_name) | Name of the DynamoDB table created |
| <a name="output_main_table_arn"></a> [main_table_arn](#output_main_table_arn) | ARN of the DynamoDB table |
| <a name="output_main_table_id"></a> [main_table_id](#output_main_table_id) | ID of the DynamoDB table |



## Contributors

- [Piyush Upadhyay](https://github.com/piiiyuushh)
- [Nikita Joshi](https://github.com/jnikita19)

