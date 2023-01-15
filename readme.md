# AWS VPC ENDPOINT Terraform module

Terraform module built for Vodacom internal use by the Vodasure team.

ECS configurations includes:

- Interface and Gateway VPC Endpoint creation
- Security groups association
- route table association
- endpoitn policy creation and attachment

## Basic Usage

```hcl
module "vpc_endpoint" {
  source = "vodasure/vpcendpoint"
  vpc_id = var.vpc_id
  service_name = var.service_name
  vpc_endpoint_type = var.vpc_endpoint_type
  security_group_ids = var.security_group_ids
  subnet_ids = var.subnet_ids
  tags   = var.global_tags
}
```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0 |
| aws | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 4.0.0 |

## Modules

No Modules.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| tags | (Required) module global tags. | `object({Name = string, Author = string, Environment = string, Provisioner = string, Region= string})` | `null` | yes |
| vpc_id | (Required) VPC id. | `string` | `null` | yes |
| service_name | (Required) Service name with included region. | `string` | `null` | yes |
| vpc_endpoint_type | (Required) Vpc endpoint type. | `list(string)` | `null` | yes |
| security_group_ids | (Required) list of security groups to attach to eni. | `list(string)` | `null` | yes |
| subnet_ids | (Required) Subnets list. | `list(string)` | `null` | yes |
| route_table_id | (Optional) route tables for gateway eni. | `string` | `null` | no |
| policy | (Optional) policy to attach to endpoint. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| vpc_endpoint\_id | VPC endpoint id. |
| vpc_endpoint\_arn | VPC endpoint arn. |

## Authors

Module authored and managed by [Leon_Mwandiringa](https://github.com/leonmwandiringa) from the [Vodasure Team].

## License

Apache 2 Licensed. See LICENSE for full details.