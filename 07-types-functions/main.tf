data "aws_instance" "cloud9" {
  filter {
    name   = "tag-key"
    values = ["aws:cloud9:environment"]
  }
  filter {
    name   = "tag:Student"
    values = [var.username]
  }
}

data "aws_ec2_instance_type" "cloud9" {
  instance_type = data.aws_instance.cloud9.instance_type
}
