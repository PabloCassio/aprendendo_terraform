resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh"
  description = "acesso-ssh"
  

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = var.cdirs_acesso_remoto
   
  }


  tags = {
    Name = "ssh"
  }
}

resource "aws_security_group" "us-east-2-acesso-ssh" {
  provider = "aws.us-east-2"
  name        = "acesso-ssh"
  description = "acesso-ssh"
  

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["187.109.2.65/32"]
   
  }


  tags = {
    Name = "ssh"
 
  }
  }