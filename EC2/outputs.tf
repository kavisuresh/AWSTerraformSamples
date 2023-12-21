output "instance_id" {
    description = "Instance ID"
    value = aws_instance.web_server.id
}

output "instance_public_ip" {
    description = "Instance Public IP Address"
    value = aws_instance.web_server.public_ip  
}
