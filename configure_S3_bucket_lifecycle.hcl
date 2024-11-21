#Validates: Advanced resource configuration and lifecycle rules.

resource "aws_s3_bucket" "example" {
  bucket = "example-bucket-12345"
}

resource "aws_s3_bucket_lifecycle_configuration" "example" {
  bucket = aws_s3_bucket.example.id

  rule {
    id     = "expire-logs"
    status = "Enabled"

    expiration {
      days = 30
    }
  }
}
