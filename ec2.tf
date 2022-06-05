resource "aws_instance" "myinstance" {

  ami = data.aws_ami.app_ami
  instance_type = var.instance_type
  key_name = var.key
  

}


