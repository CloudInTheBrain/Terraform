output "instance_public_ip" {
  description = "Public IP of the deployed EC2 instance"
  value       = module.ec2.public_ip
}
