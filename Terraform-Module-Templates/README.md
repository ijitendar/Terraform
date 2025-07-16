# Terraform AWS S3 Bucket Module

This module creates an S3 bucket in AWS.

## Inputs

| Name        | Description                     | Type   | Default | Required |
|-------------|---------------------------------|--------|---------|----------|
| bucket_name | Name of the bucket              | string | n/a     | yes      |
| environment | Environment tag                 | string | "dev"   | no       |
| acl         | Bucket ACL                      | string | private | no       |
| region      | AWS region                      | string | us-east-1 | no     |

## Outputs

| Name        | Description               |
|-------------|---------------------------|
| bucket_name | The name of the bucket    |
| bucket_arn  | The ARN of the bucket     |

