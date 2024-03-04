# SUBNET A

resource "aws_eip" "eip-test-tf-a" {    
    
    tags = {
        Name = "eip-test-tf-a"
    }
}

resource "aws_nat_gateway" "priv-natgw-test-tf-a" {
  allocation_id = aws_eip.eip-test-tf-a.id
  subnet_id     = aws_subnet.public-subnet-test-tf-a.id
  

  tags = {
    Name = "priv-natgw-test-tf-a"
  }

  depends_on = [aws_internet_gateway.igw-test-tf]
}

resource "aws_route_table" "priv-rtable-test-tf-a" {
  vpc_id = aws_vpc.vpc-test-tf.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.priv-natgw-test-tf-a.id
    }

  tags = {
    Name = "priv-rtable-test-tf-a"
  }

}

resource "aws_route_table_association" "priv-rtable-association-test-tf-a" {
  subnet_id      = aws_subnet.private-subnet-test-tf-a.id
  route_table_id = aws_route_table.priv-rtable-test-tf-a.id
  
}


resource "aws_subnet" "private-subnet-test-tf-a" {
  vpc_id     = aws_vpc.vpc-test-tf.id
  cidr_block = "10.0.2.0/24"
  #map_public_ip_on_launch = true
  availability_zone = data.aws_availability_zones.available.names[0]


  tags = {
    Name = "private-subnet-test-tf-a"
  }
}

# SUBNET B

resource "aws_eip" "eip-test-tf-b" {    
    
    tags = {
        Name = "eip-test-tf-b"
    }
}

resource "aws_nat_gateway" "priv-natgw-test-tf-b" {
  allocation_id = aws_eip.eip-test-tf-b.id
  subnet_id     = aws_subnet.public-subnet-test-tf-b.id
  

  tags = {
    Name = "priv-natgw-test-tf-b"
  }

  depends_on = [aws_internet_gateway.igw-test-tf]
}

resource "aws_route_table" "priv-rtable-test-tf-b" {
  vpc_id = aws_vpc.vpc-test-tf.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.priv-natgw-test-tf-b.id
    }

  tags = {
    Name = "priv-rtable-test-tf-b"
  }

}

resource "aws_route_table_association" "priv-rtable-association-test-tf-b" {
  subnet_id      = aws_subnet.private-subnet-test-tf-b.id
  route_table_id = aws_route_table.priv-rtable-test-tf-b.id
  
}


resource "aws_subnet" "private-subnet-test-tf-b" {
  vpc_id     = aws_vpc.vpc-test-tf.id
  cidr_block = "10.0.3.0/24"
  #map_public_ip_on_launch = true
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "private-subnet-test-tf-b"
  }
}
