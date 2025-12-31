terraform {
  source = "./terraform"
}

remote_state {
  backend = "s3"
  config = {
    bucket = "ecs-simple-terragrunt-state-poc"
    key    = "ecs/terraform.tfstate"
    region = "ap-south-1"
  }
}

