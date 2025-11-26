resource "aws_security_group" "test_sg" {
    vpc_id = aws_vpc.test_vpc.id
    ingress {
        from_port = 0 
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
       description = "Allow_all"
    }
    tags = {
        Name = "Test-SG"
    }
}