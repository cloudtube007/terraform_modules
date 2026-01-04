output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_cidr" {
  value = module.vpc.vpc_cidr
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "public_subnet_cidr" {
  value = module.vpc.public_subnet_cidr
}

output "private_subnet_id" {
  value = module.vpc.private_subnet_id
}

output "private_subnet_cidr" {
  value = module.vpc.private_subnet_cidr
}

output "instance_id" {
  value = module.ec2.instance_id
}