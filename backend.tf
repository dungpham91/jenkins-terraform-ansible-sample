terraform {
  backend "s3" {
    bucket         = "dungpham-s3-backend"
    key            = "dungpham"
    region         = "ap-southeast-1"
    encrypt        = true
    role_arn       = "arn:aws:iam::952429021322:role/DungphamS3BackendRole"
    dynamodb_table = "dungpham-s3-backend"
  }
}