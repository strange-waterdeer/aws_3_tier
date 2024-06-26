# Security Group for Web Service
resource "aws_security_group" "sg_web" {
  vpc_id = aws_vpc.vpc.id

  egress = {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress = {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  tags = {
    Name = "pj_web_sg"
  }
}

# Security Group for Database Service
resource "aws_security_group" "sg_db" {
  vpc_id = aws_vpc.vpc.id

  egress = {
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "pj_db_sg"
  }
}