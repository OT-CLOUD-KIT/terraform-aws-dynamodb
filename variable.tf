variable "environment" {
  type        = string
  description = "The environment for the infrastrcutrue (dev)"
  default     = "dev"
}



variable "region" {
  type        = string
  description = "The AWS region to target for deploymnet"
  default     = "us-east-1"
}

variable "billing_mode" {
  type        = string
  description = "billing mode"
  default     = "PROVISIONED"
}

variable "read_capacity_main-table" {
  type        = number
  description = "read capacity main table"
  default     = 2
}

variable "write_capacity_main-table" {
  type        = number
  description = "write capacity main table"
  default     = 2
}

variable "hash_key" {
  type        = string
  description = "hash key"
  default     = "orderId"
}

variable "range_key" {
  type        = string
  description = "range key"
  default     = "customerId"
}

variable "stream_enabled" {
  type        = bool
  description = "stream enabled yes or no"
  default     = false
}

variable "stream_view_type" {
  type        = string
  description = "stream view type"
  default     = "NEW_AND_OLD_IMAGES"
}

variable "ttl_enabled" {
  type        = bool
  description = "Time to Live enable yes or no"
  default     = false
}

variable "ttl_attribute_name" {
  type        = string
  description = "Time to Live attribute name"
  default     = "trn"
}

variable "point_in_time_recovery_enabled" {
  type        = bool
  description = "point in time recovery enabled"
  default     = false
}



variable "attributes" {
  type        = list(map(string))
  description = "(Required) Provide attributes for the table"
  default     = []
}

variable "global_secondary_indexes" {
  type        = any
  description = "(Optional) Provide Global secondary indexes for a table"
  default     = []
}

variable "local_secondary_indexes" {
  type        = any
  description = "(Optional) Provide local secondary indexes for a table"
  default     = []
}

################################## Naming Convention Variables #########################################

variable "env" {
  type = string
  default = "dev"
  
}

variable "owner" {
  type = string
  default = "opstree"
}

variable "app" {
  type = string
  default = "otcloud-kit"
  
}