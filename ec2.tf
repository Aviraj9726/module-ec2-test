resource "aws_instance" "myinstance" {

  ami = data.aws_ami.app_ami
  instance_type = var.instance_type
  key_name = var.key
  vpc_security_group_ids = [var.security_group.id]

}

data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }


}
