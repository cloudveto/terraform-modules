## How to use this module

```
module "kms" {
  source      = "github.com/cloudveto/terraform-modules/aws/kms_key_alias"
  account_id  = var.account_id
  environment = var.environment
  kms_policy  = "kms-ebs-policy"
  region      = var.region
  key_alias   = "my-kms-key"
}
```
## templates folder should contain a policy with existing policies and user.
### templates/kms-ebs-policy.json.tpl
```
{
  "Version": "2012-10-17",
  "Id": "key-default-1",
  "Statement": [
    {
      "Sid": "Enable EBS User Permissions",
      "Effect": "Allow",
      "Principal": {"AWS": "arn:aws:iam::${account_id}:root"},
      "Action": "kms:*",
      "Resource": "*"
    },
    {
      "Sid": "Allow attachment of persistent resources",
      "Effect": "Allow",
      "Principal": {
        "AWS": [
            "arn:aws:iam::${account_id}:role/devops_role",
            "arn:aws:iam::${account_id}:role/cicd_role",            
            "arn:aws:iam::${account_id}:user/devops_user"
        ]
      },
      "Action": "kms:*",
      "Resource": "*"
    }
  ]
}
```
