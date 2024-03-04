resource "aws_vpc" "vpc-test-tf" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  
  tags = {
    Name = "vpc-test-tf"
  }
}