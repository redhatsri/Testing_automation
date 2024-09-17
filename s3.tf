## Bucket is used for Code files for sandbox
resource "aws_s3_bucket" "code_files" {
  bucket = "${var.app}-${var.env}-code-files"
  force_destroy = false
  object_lock_enabled = false

}

resource "aws_s3_bucket_public_access_block" "code_files_public_access" {
  bucket = aws_s3_bucket.code_files.bucket

  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "code_files_versioning" {
  bucket = aws_s3_bucket.code_files.bucket

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "code_files_config" {
  bucket = aws_s3_bucket.code_files.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
