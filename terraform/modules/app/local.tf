locals {
  dynamo_tags = {
    name        = var.dynamo_table_name
    environment = var.env
  }
  dynamo_table = {
    name         = var.dynamo_table_name
    billing_mode = var.dynamo_table_billing_mode
    hash_key     = var.dynamo_table_hash_key
  }

  lambda_function_name = format("%s_%s", var.lambda_function_name, var.env)
  lambda_role_ddb_name = format("%s_%s", var.lambda_role_ddb_name, var.env)

}
