# output "instance_id" {
#     value = aws_instance.msi_server.*.id
# }
# 
# output "instance_ip" {
#     value = aws_instance.msi_server.*.public_ip
# }


output "instance_id" {
    value = aws_instance.msi_server.id
}

output "instance_ip" {
    value = aws_instance.msi_server.public_ip
}