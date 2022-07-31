module "ddb_module" {
  source            = "../modules/app/"
  dynamo_table_name = var.dynamo_table_name
  env               = var.env
}
