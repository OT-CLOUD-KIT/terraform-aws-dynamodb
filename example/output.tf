output "main_table_id" {
  description = "The ID of the DynamoDB table"
  value       = lookup(module.dynamodb_table[0], "main-table-id", null)
}

output "main_table_arn" {
  description = "The ARN of the DynamoDB table"
  value       = lookup(module.dynamodb_table[0], "main-table-arn", null)
}

output "table_name" {
  description = "The name of the DynamoDB table"
  value       = lookup(module.dynamodb_table[0], "table-name", null)
}
