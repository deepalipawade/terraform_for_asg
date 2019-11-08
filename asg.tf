provider "aws" {
  region = "us-east-1"
}
resource "aws_launch_template" "foobar" {
  name_prefix   = "foobar"
  image_id      = "ami-02c8c6db2ca4d8be4"
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "bar" {
  availability_zones = ["us-east-1a"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = "${aws_launch_template.foobar.id}"
    version = "$Latest"
  }
}
