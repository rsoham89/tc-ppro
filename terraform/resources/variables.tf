variable "dynamo_table_name" {
  type = string
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
  type = string
}

variable "lambda_role_ddb_name" {
  type = string
}
