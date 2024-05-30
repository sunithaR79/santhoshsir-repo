module "s3" {
  source = "./s3"
  bucket_name = var.bucket_name
}

module "vpc" {
  source = "./vpc"
  cidr = var.cidr
  vpc_name = var.vpc_name
  public_subnet_cidr = var.public_subnet_cidr
  public_subnet_name = var.public_subnet_name
  }


module "iam" {
  source     = "./iam"
  role       = var.role_name
  depends_on = [module.s3]
  }

module "ec2" {
  source = "./ec2"
  subnetid = module.vpc.public_subnet_id
  instance_type_id = "t2.micro"
  ami_id = "ami-07ef4004db979fcd4"
  roleattach = module.iam.roleattach
} 








