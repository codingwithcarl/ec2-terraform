module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "carl-test-ec2-instance"

  ami                    = "ami-ebd02392"
  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  #vpc_security_group_ids = ["sg-12345678"]
  #subnet_id              = "subnet-caz3"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

