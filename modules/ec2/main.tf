resource "aws_instance" "name" {
  ami = var.ami_id
  instance_type = var.instance_type_id
  subnet_id = var.subnetid
  iam_instance_profile = var.roleattach
  
  
}