output "vpc_id" {
  value       = module.base-vpc.vpc_id
  description = "The VPC Id of the newly created VPC."
}

output "public_subnet_id" {
  value = module.base-vpc.public_subnet_id
}

output "private_subnet_id" {
  value = module.base-vpc.private_subnet_id
}

output "fortigate_parameter_store_name" {
  value = "/${var.customer_prefix}/${var.environment}/${var.fgt_password_parameter_name}"
}

output "network_public_eni_id" {
  value = module.fortigate.network_public_interface_id
}

output "network_private_eni_id" {
  value = module.fortigate.network_private_interface_id
}
output "fortigate_instance_id" {
  value = module.fortigate.instance_id
}
