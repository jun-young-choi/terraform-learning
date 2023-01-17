/*
  Values in this file will appear when "terraform apply" command sucsessfully worked, or when "terraform ouput" command excuted.
*/

output "instance_id" {
  description = "ID of EC2 instance"
  value = aws_instance.app_server.id
}

output "public_ip" {
  description = "Public IP of EC2 instance"
  value = aws_instance.app_server.public_ip
}