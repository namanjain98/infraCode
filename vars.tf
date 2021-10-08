variable "AWS_REGION" {
  default = "us-west-2"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mongo"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mongo.pub"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-03d5c68bab01f3496"
    us-west-2 = "ami-03d5c68bab01f3496"
    eu-west-1 = "ami-844e0bf7"
  }
}

variable "i-count" {
  default = 2
}

variable "instance_type" {
	type    = string
	default = "t2.micro"
}

