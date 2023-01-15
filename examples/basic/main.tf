provider "aws" {
  region = "us-east-2"
}

module "vpc_endpoint" {
  source = "../.."
  vpc_id = "vpc-55cd3c3e"
  service_name = "com.amazonaws.us-east-2.sqs"
  vpc_endpoint_type = "Interface"
  security_group_ids = ["sg-054bc5759c5e2b25c"]
  subnet_ids = ["subnet-33fee75b", "subnet-aed26ce2"]
  tags   = {
    Name = "testo1"
    Author      = "aut1"
    Environment = "env1"
    Provisioner = "terraform"
    Region      = "us-east-2"
  }
}