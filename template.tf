provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "test_VM" {
  ami           = "ami-7c4f7097"
  instance_type = "t2.micro"

  tags {
    Name = "kuyhkjy_${var.vm_name}"
  }
}

variable "vm_name" {
  description = "Name for VM to be created7"
}