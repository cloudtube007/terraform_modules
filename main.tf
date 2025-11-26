module "vpc" {
  source              = "./network"
  public_subnet_cidr  = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
  private_subnet_cidr = ["10.1.10.0/24"]
  vpc_cidr            = "10.1.0.0/16"
  vpc_name            = "Test-VPC"
  azs                 = ["us-east-1a", "us-east-1b", "us-east-1c"]
  igw                 = "IGW"
}

module "ec2" {
  source    = "./Dev"
  subnet_id = module.vpc.public_subnet_id
  sg_id     = module.vpc.sg_id
  env       = "DEV"
}