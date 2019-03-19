output "address" {
  value = "${aws_instance.validator.public_ip}"
}