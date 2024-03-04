resource "aws_internet_gateway" "igw-test-tf" {
  vpc_id = aws_vpc.vpc-test-tf.id

  tags = {
    Name = "igw-test-tf"
  }
}

resource "aws_default_route_table" "routetable-test-tf" {
  default_route_table_id = aws_vpc.vpc-test-tf.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-test-tf.id
  }

  tags = {
    Name = "routetable-test-tf"
  }
}