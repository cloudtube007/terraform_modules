resource "aws_instance" "test_server" {
    ami = "ami-0fa3fe0fa7920f68e"
    instance_type = "t2.micro"
    subnet_id = var.subnet_id[1]
    security_groups = [var.sg_id]
    tags = {
        Name = "Test-Server"
        env = var.env
    }
}