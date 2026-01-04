resource "aws_route_table" "private_rt" {
    vpc_id = aws_vpc.msi_vpc.id
   # rooute {
   #     gateway_id = aws_nat_gateway.nat_gw.id
   #     cidr_block = "0.0.0.0/0"
   # }
    tags = {
        Name = "Private-RT"
    }
}