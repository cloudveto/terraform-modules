##How to use KMS key and alias.
```
module "kms" {
  source     = "github.com/cloudveto/terraform-modules/aws/kms/kms_key"
  account_id = var.account_id
  kms_policy = "kms-policy-file"
  region     = var.region
}
module "kms_alias" {
  source     = "github.com/cloudveto/terraform-modules/aws/kms/kms_alias"
  key_alias  = "my-kms-key"
  kms_key_id = module.kms.key_id
}
```
##templates folder should contain "kms-policy-file".
### templates/kms-policy-file.json.tpl
```
{
  "Version": "2012-10-17",
  "Id": "key-default-1",
  "Statement": [
    {
      "Sid": "Enable KMS User Permissions",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::${account_id}:root"
      },
      "Action": "kms:*",
      "Resource": "*"
    },
    {
      "Sid": "Allow attachment of persistent resources",
      "Effect": "Allow",
      "Principal": {
        "AWS": [
            "arn:aws:iam::${account_id}:role/devops_role",
            "arn:aws:iam::${account_id}:user/devops_user"
        ]
      },
      "Action": "kms:*",
      "Resource": "*"
    }
  ]
}
```