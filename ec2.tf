resource "aws_instance" "myinstance" {

  ami = data.aws_ami.app_ami
  instance_type = var.instance_type
  key_name = var.key
  

}

data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }


}
