#Bucket creation

resource "aws_s3_bucket" "github_backend" {
  bucket = "githubbackend05042026"
  tags = {
    Name = "Terraform backend bucket"
  }
}
#Bkucket version enables
resource "aws_s3_bucket_versioning" "Versioning" {
bucket = aws_s3_bucket.github_backend.id

versioning_configuration {
  status = "Enabled"
}
  }
  # Block public access
  
resource "aws_s3_account_public_access_block" "blockpublic" {
  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true  
  }

