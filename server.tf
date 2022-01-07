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
}
