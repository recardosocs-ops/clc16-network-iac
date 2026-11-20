terraform {
  backend "s3" {
    bucket = "terraform-state-renata-clc16-491821671146-us-east-1-an"
    key    = "terraform/state"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}