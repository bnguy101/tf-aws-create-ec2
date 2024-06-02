provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "benny_ec2" {
  ami           = "ami-0ca2e925753ca2fb4"
  instance_type = "t2.micro"
  # key_name = "add the aws key-pair here"

  tags = {
    Name = "UsingTerraform"
  }
}

output "instance_id" {
  value = aws_instance.benny_ec2.id
}

# deploy using terraform init, terraform plan, to terraform apply
# run terraform destroy when finished
