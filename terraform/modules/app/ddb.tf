resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name         = local.dynamo_table.name
  billing_mode = local.dynamo_table.billing_mode
  hash_key     = local.dynamo_table.hash_key

  attribute {
    name = local.dynamo_table.hash_key
    type = "S"
  }

  tags = local.dynamo_tags
}
