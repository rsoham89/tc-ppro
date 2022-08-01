#### Entries for Dynamodb #######
variable "dynamo_table_name" {
  type        = string
  description = "The main database from where the data will be retrieved"
  default     = "Statements"
}

variable "dynamo_table_billing_mode" {
  type        = string
  description = "Provisioned or Pay Per Request"
  default     = "PAY_PER_REQUEST"
}

variable "dynamo_table_hash_key" {
  type        = string
  description = "The partition key of the table (In this case the primary key)"
  default     = "Statement"
}

variable "env" {
  type        = string
  description = "Environment dev or prod"
  default     = "dev/prod"
}

#### Entries for Lambda #######

variable "lambda_role_ddb_name" {
  type        = string
  description = "Lambda execution role"
  default     = "lambda-exec-role"
}
variable "lambda_function_name" {
  type        = string
  description = "Name of the lambda function"
  default     = "helloWorldAPI"
}

variable "lambda_handler" {
  type        = string
  description = "Name of the handler function"
  default     = "lambda_function.lambda_handler"
}

variable "lambda_runtime" {
  type        = string
  description = "Lambda runtime environment"
  default     = "python3.8"
}
