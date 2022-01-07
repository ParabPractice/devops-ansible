provider "aws" {
  region     = "us-east-2"
}

resource "aws_instance" "DevOpsEc2" {
  ami           = "ami-002068ed284fb165b"
  instance_type = "t2.micro"
  key_name  = "parabtest"

  tags = {
    Name = "ParabDevOps-Ec2"
  }
  provisioner "local-exec" {
    command = "echo The servers IP address is ${self.public_ip} && echo ${self.public_ip} > /root/inv"
  }
}
