resource "aws_s3_bucket" "state_storage" {
  bucket = var.state_storage.bucket
  tags = {
    Name        = var.state_storage.Name
    Environment = var.state_storage.Environment
  }
}

resource "aws_s3_bucket_acl" "state_storage_acl" {
  bucket = aws_s3_bucket.state_storage.id
  acl    = var.state_storage.acl
}
