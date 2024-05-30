output "name" {
  value = module.s3.bucket1
}
output "instance-ami" {
  value = module.ec2.server
}

output "vpc_id" {
  value = module.vpc.vpc_id
}
output "subnet_id" {
  value = module.vpc.public_subnet_id
}
output "roles" {
  value = module.iam.role_name
}