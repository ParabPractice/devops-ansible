provider "aws" {
  region     = "us-east-2"
  access_key = "AKIAZ3S6MYW2XZY3B5UE"
  secret_key = "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"
}


resource "aws_instance" "DevOpsEc2" {
  ami           = "ami-002068ed284fb165b"
  instance_type = "t2.micro"
  key_name  = "parabtest"

  tags = {
    Name = "ParabDevOps-Ec2"
  }
}
