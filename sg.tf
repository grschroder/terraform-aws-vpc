resource "aws_security_group" "allow_ssh-tf" {
  name        = "allow_ssh-tf"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.vpc-test-tf.id

  ingress {
    description      = "SSH from ALL"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh-tf"
  }
}