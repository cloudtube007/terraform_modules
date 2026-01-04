module "vpc" {
  source              = "./network"
  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidr  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnet_cidr = ["10.0.10.0/24", "10.0.20.0/24"]
  azs                 = ["us-east-1a", "us-east-1b", "us-east-1c"]
  env                 = "DEV"
}

module "ec2" {
  source    = "./dev"
  ami_id    = "ami-0ecb62995f68bb549"
  subnet_id = module.vpc.public_subnet_1
  sg_id     = module.vpc.sg_id
  env       = "DEV"
}