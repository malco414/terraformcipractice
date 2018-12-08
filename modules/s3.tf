resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket_name}"
  acl    = "private"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "AllowTest",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::${var.aws_account_id}:root"
      },
      "Action": "s3:*",
      "Resource": "arn:aws:s3:::${var.bucket_name}/*"
    }
  ]
}
POLICY
}
