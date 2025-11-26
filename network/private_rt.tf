resource "aws_route_table" "private_rt" {
    vpc_id = aws_vpc.test_vpc.id
    #route {
    #    gateway_id = ""
    #    cidr_block = "0.0.0.0/0"
    #}
    tags = {
        Name = "Private-RT"
    }
}

resource "aws_route_table_association" "pt_sn" {
    count = length(aws_subnet.private_subnet.*.id)
    route_table_id = aws_route_table.private_rt.id
    subnet_id = element(aws_subnet.private_subnet.*.id, count.index)
}