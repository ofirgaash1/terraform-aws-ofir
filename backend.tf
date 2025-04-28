terraform {
  backend "s3" {
    bucket = "imtec-tf-backend"          # <-- your existing bucket
    key    = "ofir/terraform.tfstate"  # <-- the "path" inside the bucket (you choose it)
    region = "il-central-1"               # <-- your region
  }
}

