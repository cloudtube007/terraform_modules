output vpc_id {
    value = aws_vpc.msi_vpc.id
}

output vpc_cidr {
    value = aws_vpc.msi_vpc.cidr_block
}

output public_subnet_id {
    value = aws_subnet.public_subnet.*.id
}

output public_subnet_cidr {
    value = aws_subnet.public_subnet.*.cidr_block
}

output private_subnet_id {
    value = aws_subnet.private_subnet.*.id
}

output private_subnet_cidr {
    value = aws_subnet.private_subnet.*.cidr_block
}

output public_subnet_1 {
    value = aws_subnet.public_subnet.0.id
}

output sg_id {
    value = aws_security_group.msi_sg.id
}