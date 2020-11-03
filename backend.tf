terraform {
  required_version = ">= 0.12"
  backend "s3" {
     bucket = ""
     key = "zemoga-state.tfstate"

     region = "us-east-1"
     encrypt = true

   }
}

