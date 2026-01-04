resource "aws_vpc" "msi_vpc" {
    cidr_block = var.vpc_cidr
    enable_dns_hostnames = true
    tags = {
        Name = "MSI-VPC"
        env = var.env
    }
}


resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.msi_vpc.id
    tags = {
        Name = "IGW"
    }
}