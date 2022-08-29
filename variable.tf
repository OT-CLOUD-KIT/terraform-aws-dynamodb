variable "environment" {
  type        = string
  description = "The environment for the infrastrcutrue (dev, test, prod)"
  default = "dev"
}

variable "table_name" {
  type        = string
  description = "The name of the table"
  default = "shipping"
  
}

variable "region" {
  type        = string
  description = "The AWS region to target for deploymnet"
  default = "us-east-1"
  
}

variable "billing_mode" {
   type        = string
  description = "billing_mode"
  default     =  "PROVISIONED"
  
  
}
variable "read_capacity_main-table" {
  type        = number
  description = "read capacity main table"
  default     =  2
  
}

variable "write_capacity_main-table" {
   type        = number
  description = "write capacity main table"
  default     =  2
  
}

variable "hash_key" {
  type        = string
  description = "hash key"
  default     =  "orderId"
  
}

variable "range_key" {
     type        = string
  description = "range key"
  default     =  "customerId"
  
}

variable "type" {
     type        = string
  description = "type"
   default     =  "S"
  
}

variable "attribute1_name" {
  type        = string
  description = "attribute1 name"
  default     =  "orderId"
  
}

variable "attribute2_name" {
     type        = string
  description = "attribute2 name"
  default     =  "customerId"
  
}

variable "attribute3_name" {
  type        = string
  description = "attribute3 name"
  default     =  "shipped"
  
}

variable "name_local_secondary_index" {
     type        = string
  description = "name local secondary index"
  default     =  "lsi-orderId-customerId"
  
}

variable "local_secondary_index_range_key" {
     type        = string
  description = "local secondary index rangek ey"
  default     =   "customerId"
   
}

variable "name_global_secondary_index" {
     type        = string
  description = "name global secondary index"
   default     =  "gsi-shipped" 
    
}
variable "global_secondary_index_hash_key" {
     type        = string
  description = "global secondary index hash key"
  default     =  "orderId"
}

variable "global_secondary_index_range_key" {
     type        = string
  description = "global secondary index range key"
  default     =  "shipped"

}

variable "write_capacity_global_secondary_index" {
     type        = string
  description = "write capacity global secondary index"
  default     =  1
}

variable "read_capacity_global_secondary_index" {   
  type        = string
  description = "read capacity global secondary index"
 default     =  1

}
variable "projection_type_local_secondary_index" {
  type        = string
  description = "projection type local secondary index"
  default     = "ALL" 
  
}
variable "projection_type_global_secondary_index" {
  type        = string
  description = "projection type global secondary index"
  default     = "ALL" 
  
}


  
