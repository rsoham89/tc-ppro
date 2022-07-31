resource "aws_iam_role" "lambda_ddb_role" {
  name               = local.lambda_role_ddb_name
  assume_role_policy = file("${path.module}/policies/lambda_role.json")
}

resource "aws_iam_role_policy_attachment" "dynamodb_access_policy" {
  role       = aws_iam_role.lambda_ddb_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBReadOnlyAccess"
}

resource "aws_lambda_function" "lambda_api" {

  filename      = var.lambda_filename
  function_name = local.lambda_function_name
  role          = aws_iam_role.lambda_ddb_role.arn
  handler       = var.lambda_handler
  runtime       = var.lambda_runtime


  environment {
    variables = {
      db_name = var.dynamo_table_name
      env     = var.env
    }
  }
}

resource "aws_lambda_function_url" "url" {
  function_name      = aws_lambda_function.lambda_api.function_name
  authorization_type = "NONE"
  cors {
    allow_credentials = true
    allow_origins     = ["*"]
    allow_methods     = ["*"]
    allow_headers     = ["date", "keep-alive"]
    expose_headers    = ["keep-alive", "date"]
    max_age           = 86400
  }
}
