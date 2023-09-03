resource "aws_instance" "webserver" {
  count = 2

  # AMI ID from https://cloud-images.ubuntu.com/locator/ec2/
  ami           = "ami-02ee5a6c04de8002a"
  instance_type = "t4g.nano"

  ebs_optimized = true
  monitoring    = true

  metadata_options {
    http_tokens = "required"
  }

  tags = {
    Name  = "webserver-${count.index}"
    Owner = "otherdevopsgene@portinfo.com"
    Class = "Terraform Fundamentals"
  }
}
