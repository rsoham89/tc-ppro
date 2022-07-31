#### Entries for Dynamodb #######
variable "dynamo_table_name" {
  type    = string
  default = "Statements"
}

variable "dynamo_table_billing_mode" {
  type    = string
  default = "PAY_PER_REQUEST"
}

variable "dynamo_table_hash_key" {
  type    = string
  default = "Statement"
}

variable "env" {
  type    = string
  default = "prod"
}

#### Entries for Lambda #######

variable "lambda_role_ddb_name" {
  type    = string
  default = "lambda-exec-role"
}

variable "lambda_filename" {
  type    = string
  default = "lambda_function.py.zip"
}

variable "lambda_function_name" {
  type    = string
  default = "helloWorldAPI"
}

variable "lambda_handler" {
  type    = string
  default = "lambda_function.lambda_handler"
}

variable "lambda_runtime" {
  type    = string
  default = "python3.8"
}
