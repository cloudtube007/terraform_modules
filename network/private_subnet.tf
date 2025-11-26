resource "aws_subnet" "private_subnet" {
    count = length(var.private_subnet_cidr)
    vpc_id = aws_vpc.test_vpc.id
    cidr_block = element(var.private_subnet_cidr, count.index)
    availability_zone = element(var.azs, count.index)
    tags = {
        Name = "Private-Subnet-${count.index + 1}"
    }
}