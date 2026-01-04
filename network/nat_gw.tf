resource "aws_eip" "eip" {

    tags = {
        Name = "EIP"
    }
}


resource "aws_nat_gateway" "nat_gw" {
    allocation_id = aws_eip.eip.id
    subnet_id = aws_subnet.public_subnet.0.id

    tags = {
        Name = "NAT-GW"
    }

    depends_on = [
        aws_vpc.msi_vpc
    ]
}