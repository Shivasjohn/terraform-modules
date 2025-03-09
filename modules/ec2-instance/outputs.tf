output "instance_id" {
  description = "id of the instance"
  value       = aws_instance.this.id
}

output "public_ip" {
  description = "public ip of the instance"
  value       = aws_instance.this.public_ip
}