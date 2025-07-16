variable "environment" {
  type        = string
  description = "The environment for the infrastrcutrue (dev)"
}


variable "region" {
  type        = string
  description = "The AWS region to target for deploymnet"
}

variable "billing_mode" {
  type        = string
  description = "billing mode"
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
  description = "Time to Live enable yes or no"
}

variable "ttl_attribute_name" {
  type        = string
  description = "Time to Live attribute name"
}

variable "point_in_time_recovery_enabled" {
  type        = bool
  description = "point in time recovery enabled"
}



variable "attributes" {
  type        = list(map(string))
  description = "(Required) Provide attributes for the table"
}

variable "global_secondary_indexes" {
  type        = any
  description = "(Optional) Provide Global secondary indexes for a table"
}

variable "local_secondary_indexes" {
  type        = any
  description = "(Optional) Provide local secondary indexes for a table"
}

variable "enable_dynamodb_table_resource" {
  type        = bool
  description = "need to create dynamodb resource yes or no"
}

################################# Naming Convention Variables #########################################

variable "env" {
  description = "Environment short name. Must be one of: d (dev), p (prod), q (qa), s (stage), g (global)."
  type        = string
  default     = "d"
  validation {
    condition     = contains(["d", "p", "q", "s", "g"], var.env)
    error_message = "env must be one of 'd', 'p', 'q', 's', 'g'."
  }
}

variable "bu" {
  description = "Business unit name (e.g., pcs, ultrasound). Max 5 characters."
  type        = string
  default     = "ot"
  validation {
    condition     = length(var.bu) <= 5
    error_message = "The business unit name must be less than or equal to 5 characters."
  }
}

variable "app" {
  description = "Application name (e.g., network, shared). Max 6 characters."
  type        = string
  default     = "bp"
  validation {
    condition     = length(var.app) <= 6
    error_message = "The app name must be less than or equal to 6 characters."
  }
}

variable "resource" {
  description = "Resource name (e.g., eks, efs, ecr). Max 15 characters."
  type        = string
  default     = "instance"
  validation {
    condition     = length(var.resource) <= 15
    error_message = "The resource name must be less than or equal to 15 characters."
  }
}

variable "tenant" {
  description = "Tenant name (e.g., app1, app2). Max 6 characters."
  type        = string
  default     = ""
  validation {
    condition     = length(var.tenant) <= 6
    error_message = "The tenant name must be less than or equal to 6 characters."
  }
}

variable "enabled_features" {
  type    = list(string)
  default = []
}

variable "random_alphanumeric_len" {
  description = "The length of random alphanumeric string desired. Min: 1, Max: 4."
  type        = number
  default     = 4
  validation {
    condition     = var.random_alphanumeric_len >= 1 && var.random_alphanumeric_len <= 4
    error_message = "The length must be between 1 and 4."
  }
}

variable "special" {
  description = "Include special characters like !@#$%&*()-_=+[]{}<>:? in the generated name."
  type        = bool
  default     = false
}

variable "upper" {
  description = "Include uppercase characters in the generated name."
  type        = bool
  default     = false
}

variable "number" {
  description = "Include numbers in the generated name."
  type        = bool
  default     = true
}

variable "gen_no_of_names" {
  description = "Number of names to generate."
  type        = number
  default     = 1
}

variable "team" {
  description = "The email address of the team who owns the application, ex:digitalops@gehealthcare.com"
  type        = string
  default     = "infra"
}

variable "program" {
  description = "Name of the Program, For ex: OT, BP etc."
  type        = string
  default     = "ot"
}

