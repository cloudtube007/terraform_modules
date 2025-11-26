resource "aws_route_table" "public_rt" {
    vpc_id = aws_vpc.test_vpc.id
    route {
        gateway_id = aws_internet_gateway.igw.id
        cidr_block = "0.0.0.0/0"
    }
    tags = {
        Name = "Public-RT"
    }
}

resource "aws_route_table_association" "pb_sn" {
    count = length(aws_subnet.public_subnet.*.id)
    route_table_id = aws_route_table.public_rt.id
    subnet_id = element(aws_subnet.public_subnet.*.id, count.index)
}