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

variable "bu" {
  description = "Business unit name (e.g., BP, GURUKU). Max 6 characters."
  type        = string
  default     = "BP"
  validation {
    condition     = length(var.bu) <= 6
    error_message = "The business unit name must be less than or equal to 6 characters."
  }
}

variable "program" {
  description = "Name of the program (e.g., OT, BP)."
  type        = string
  default     = "OT"
}

variable "app" {
  description = "Application name (e.g., network, shared). Max 10 characters."
  type        = string
  default     = "network"
  validation {
    condition     = length(var.app) <= 10
    error_message = "The app name must be less than or equal to 10 characters."
  }
}

variable "env" {
  description = "Environment code: 'd' (dev), 'p' (prod), 'q' (qa), 's' (stage), 'g' (global)."
  type        = string
  default     = "d"
  validation {
    condition     = contains(["d", "p", "q", "s", "g"], var.env)
    error_message = "env must be one of 'd', 'p', 'q', 's', 'g'."
  }
}

variable "team" {
  description = "Team email responsible for the application (e.g., digitalops@gehealthcare.com)."
  type        = string
  default     = "infra"
}



