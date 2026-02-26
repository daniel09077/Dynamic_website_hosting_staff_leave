resource "aws_security_group" "bastion_sg" {
  name        = "bastion-sg"
  description = "Allow traffic only from my IP"
  vpc_id      = aws_vpc.Staff_Leave_VPC.id

  # Allow SSH from my IP only 
  ingress {
    description = "ssh from my IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["105.112.18.48/32"]
  }



  tags = {
    Name = "bastion-sg"
  }
}
