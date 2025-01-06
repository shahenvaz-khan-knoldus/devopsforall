output "application_information" {
  description = "Public IP address of the EC2 instance." 
  value = "you can access you application through this ip: http://${aws_instance.web.public_ip}"
}

output "ssh_infomation" {
  description = "Public IP address of the EC2 instance." 
  value = "you can do ssh inside your vm using this command: ssh -i mykey ubuntu@${aws_instance.web.public_ip}"
}