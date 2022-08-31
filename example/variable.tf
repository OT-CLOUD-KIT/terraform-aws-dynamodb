variable "environment" {
  type        = string
  description = "The environment for the infrastrcutrue (dev, test, prod)"
}

variable "table_name" {
  type        = string
  description = "The name of the table"
}

variable "region" {
  type        = string
  description = "The AWS region to target for deploymnet"
}

variable "billing_mode" {
  type        = string
  description = "billing_mode"
}

variable "read_capacity_main-table" {
  type        = number
  description = "read capacity main table"
}

variable "write_capacity_main-table" {
  type        = number
  description = "write capacity main table"
}

variable "hash_key" {
  type        = string
  description = "hash key"
}

variable "range_key" {
  type        = string
  description = "range key"
}

variable "stream_enabled" {
  type        = bool
  description = "stream enabled yes or no"
}

variable "stream_view_type" {
  type        = string
  description = "stream view type"
}

variable "ttl_enabled" {
  type        = bool
  description = "ttl enable yes or no"
}

variable "ttl_attribute_name" {
  type        = string
  description = "ttl attribute name"
}

variable "point_in_time_recovery_enabled" {
  type        = bool
  description = "point in time recovery enabled"
}

variable "tags" {
  type        = map(string)
  description = "(Required) tags"
}

variable "attributes" {
  type        = list(map(string))
  description = "(Required) Provide attributes for the table"
}

variable "global_secondary_indexes" {
  type        = any
  description = " (Optional) Provide Global secondary indexes for a table"
}

variable "local_secondary_indexes" {
  type        = any
  description = " (Optional) Provide local secondary indexes for a table"
}

variable "enable_dynamodb_table_resource" {
  type        = bool
  description = "need to create dynamodb resource yes or no"
}