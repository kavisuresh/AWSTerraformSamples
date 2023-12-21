# create a s3 bucket with name demo237469236402
resource "aws_s3_bucket" "demo237469236402" {
    bucket = "demo237469236402"
    tags = {
        Name        = "demo237469236402"
        Environment = "Dev"
    }
    }


# upload dog.jpg file to s3 bucket using s3 object resource
resource "aws_s3_object" "dog" {
    bucket = aws_s3_bucket.demo237469236402.id
    key    = "dog.jpg"
    source = "dog.jpg"
    etag   = filemd5("dog.jpg")
    tags = {
        Name        = "dog.jpg"
        Environment = "Dev"
    }
    }   
