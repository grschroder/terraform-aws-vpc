

resource "aws_subnet" "public-subnet-test-tf-a" {
  vpc_id     = aws_vpc.vpc-test-tf.id
  cidr_block = "10.0.0.0/24"
  map_public_ip_on_launch = true
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "public-subnet-test-tf-a"
  }
}

resource "aws_subnet" "public-subnet-test-tf-b" {
  vpc_id     = aws_vpc.vpc-test-tf.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "public-subnet-test-tf-b"
  }
}