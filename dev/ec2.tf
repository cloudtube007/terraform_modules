resource "aws_instance" "msi_server" {
 # count = length(var.subnet_id)                             # for multiple servers
    ami = var.ami_id
    instance_type = "t3.micro"
    subnet_id = var.subnet_id                              # element(var.subnet_id, count.index)
    security_groups = [var.sg_id]
    associate_public_ip_address = true
    tags = {
        Name = "MSI-Server"                                 # ${count.index + 1}
        env = var.env
    }
}