}
11
1 ## Bucket is used for Code files for dev
2 resource "aws_s3_bucket" "s3_etl_code_files" {
3 bucket ="${var.app)-${var.env)-s3-etl-code-files"
4 force_destroy false
object_lock_enabled = false tags = {
CostString AgileTeam
"AMP"
}
"1100.US.660.303030"
12 resource "aws_s3_bucket_public_access_block" "code_files_public_access" { 13 bucket =aws_s3_bucket.s3_etl_code_files.bucket
14 block public_acls true
block_public_policy 16 ignore public_acls true
15
true
17 restrict_public_buckets true
18)
19
28 resource "aws_53_bucket_versioning" "code_files_versioning" {
21 bucket aws_s3_bucket.s3_etl_code_files.bucket
22
23 Enable versioning
24 versioning_configuration {
25 status "Enabled"
26
273
28
29 resource "aws_s3_bucket_server_side_encryption_configuration" "code_files_config" {
38 bucket aws s3 bucket.s3_etl_code_files.bucket