resource "tls_private_key" "mongo" {
  algorithm = "RSA"
  rsa_bits  = "4096"
}

resource "aws_key_pair" "mongo" {
  key_name   = "mongo-key"
  public_key = tls_private_key.mongo.public_key_openssh
}

resource "local_file" "local_ssh_private_key" {
  content         = tls_private_key.mongo.private_key_pem
  filename        = "mongo"
  file_permission = "644"
}

resource "local_file" "local_ssh_public_key" {
  content         = tls_private_key.mongo.public_key_openssh
  filename        = "mongo.pub"
  file_permission = "600"
} 
