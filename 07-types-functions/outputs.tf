output "private_ip_string" {
  description = "Private IP address assigned to the Instance."
  value       = data.aws_instance.cloud9.private_ip
}

output "associate_public_ip_address_bool" {
  description = "Whether to associate a public IP address, which is a boolean value."
  value       = data.aws_instance.cloud9.associate_public_ip_address
}

output "tags_map" {
  description = "Map of tags assigned to the Instance."
  value       = data.aws_instance.cloud9.tags
}

output "vpc_security_group_ids_set" {
  description = "Associated security groups in a non-default VPC."
  value       = data.aws_instance.cloud9.vpc_security_group_ids
}

output "timeouts_null" {
  description = "Timeouts, which is null."
  value       = data.aws_instance.cloud9.timeouts
}

output "memory_size_number" {
  description = "Size of the instance memory, in MiB."
  value       = data.aws_ec2_instance_type.cloud9.memory_size
}

output "ebs_performance_maximum_throughput_number" {
  description = "The maximum throughput performance for an EBS-optimized instance type, in MBps."
  value       = data.aws_ec2_instance_type.cloud9.ebs_performance_maximum_throughput
}

output "supported_usages_classes_list" {
  description = "Indicates whether the instance type is offered for spot or On-Demand. List of strings."
  value       = data.aws_ec2_instance_type.cloud9.supported_usages_classes
}

output "first_supported_root_device_types_string" {
  description = "Indicates the supported root device types, but just the first item in the list."
  value       = data.aws_ec2_instance_type.cloud9.supported_root_device_types[0]
}
