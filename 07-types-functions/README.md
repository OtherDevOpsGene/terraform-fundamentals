<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.23.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.23.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ec2_instance_type.cloud9](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ec2_instance_type) | data source |
| [aws_instance.cloud9](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/instance) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region to work in. | `string` | `"us-east-2"` | no |
| <a name="input_username"></a> [username](#input\_username) | The username for this account. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_associate_public_ip_address_bool"></a> [associate\_public\_ip\_address\_bool](#output\_associate\_public\_ip\_address\_bool) | Whether to associate a public IP address, which is a boolean value. |
| <a name="output_ebs_performance_maximum_throughput_number"></a> [ebs\_performance\_maximum\_throughput\_number](#output\_ebs\_performance\_maximum\_throughput\_number) | The maximum throughput performance for an EBS-optimized instance type, in MBps. |
| <a name="output_first_supported_root_device_types_string"></a> [first\_supported\_root\_device\_types\_string](#output\_first\_supported\_root\_device\_types\_string) | Indicates the supported root device types, but just the first item in the list. |
| <a name="output_memory_size_number"></a> [memory\_size\_number](#output\_memory\_size\_number) | Size of the instance memory, in MiB. |
| <a name="output_private_ip_string"></a> [private\_ip\_string](#output\_private\_ip\_string) | Private IP address assigned to the Instance. |
| <a name="output_supported_usages_classes_list"></a> [supported\_usages\_classes\_list](#output\_supported\_usages\_classes\_list) | Indicates whether the instance type is offered for spot or On-Demand. List of strings. |
| <a name="output_tags_map"></a> [tags\_map](#output\_tags\_map) | Map of tags assigned to the Instance. |
| <a name="output_timeouts_null"></a> [timeouts\_null](#output\_timeouts\_null) | Timeouts, which is null. |
| <a name="output_vpc_security_group_ids_set"></a> [vpc\_security\_group\_ids\_set](#output\_vpc\_security\_group\_ids\_set) | Associated security groups in a non-default VPC. |
<!-- END_TF_DOCS -->