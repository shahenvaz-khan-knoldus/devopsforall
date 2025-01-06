resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.myapp_sg.id]
  subnet_id = aws_subnet.app_subnet.id
  key_name = aws_key_pair.deployer.key_name
  associate_public_ip_address = true
  
  provisioner "file" {
    source      = "./supportFile/myscript.sh" 
    destination = "/tmp/myscript.sh" 
  }

  provisioner "file" {
    source = "./supportFile/index.html"
    destination = "/home/ubuntu/index.html"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/myscript.sh",  
      "/tmp/myscript.sh",    
    ]
  }

  connection {
    type        = "ssh"
    user        = "ubuntu" 
    private_key = file("./supportFile/mykey")
    host        = self.public_ip
  }
  tags = {
    Name = var.app_name
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "${var.app_name}-key"
  public_key = file("./supportFile/mykey.pub")
}