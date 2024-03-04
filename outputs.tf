output "public-subnet-test-tf-a_id" {
  value = aws_subnet.public-subnet-test-tf-a.id
}

output "public-subnet-test-tf-b_id" {
  value = aws_subnet.public-subnet-test-tf-b.id
}

output "priv_subnet_a_id" {
  value = aws_subnet.private-subnet-test-tf-a.id
}

output "priv_subnet_b_id" {
  value = aws_subnet.private-subnet-test-tf-b.id
}

output "vpc_id" {
  value = aws_vpc.vpc-test-tf.id
  
}

output "allow_ssh-tf_id" {
  value = aws_security_group.allow_ssh-tf.id
  
}