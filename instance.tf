resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = var.instance_type
  subnet_id = aws_subnet.main-public-0.id
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]
  key_name = aws_key_pair.mongo.key_name
  user_data = "${file("install-nginx.sh")}"
  tags = {
    Name = "instance-1"
  }
}


resource "aws_instance" "example2" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = var.instance_type
  subnet_id = aws_subnet.main-public-1.id
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]
  key_name = aws_key_pair.mongo.key_name
  user_data = "${file("install-nginx.sh")}"
  tags = {
    Name = "instance-2"
  }
}
