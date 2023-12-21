# create s3 bucket with name new7237492
resource "aws_s3_bucket" "new7237492" {
    bucket = "new7237492"
  tags = {
    Name = "new7237492"
  }
}

# upload dog.jpg to s3 bucket using object resource
resource "aws_s3_object" "dog" {
  bucket = aws_s3_bucket.new7237492.id
  key    = "dog.jpg"
  source = "dog.jpg"
}
