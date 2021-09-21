# To create IAM USER
```
module "kaleon" {
  source               = "github.com/cloudveto/terraform-modules/aws/iam/iam-user"
  policy_template_file = "cloudveto_iam_role_devops_engineer_policy"
  role_name            = "cloudveto_iam_role_devops_engineer"
  user_email           = "cloudvetor@pm.me"
  username             = "kaleon"
  account_id           = "123456789"
}
```
Sample policy template file(cloudveto_iam_role_devops_engineer_policy.json.tpl). 
Template file to be placed in "templates/" folder.
```
{
  "Version": "2012-10-17",
  "Statement": [
      {
        "Effect": "Allow",
        "Action": [
            "sts:AssumeRole",
            "iam:ChangePassword",
            "iam:ListUsers"
         ],
        "Resource": [
            "arn:aws:iam::123456789:role/${role_name}",
            "arn:aws:iam::987654321:role/${role_name}"
        ]
      },
      {
        "Effect": "Allow",
        "Action": [
            "iam:ListUsers"
        ],
        "Resource": "*"
      },
      {
      "Effect": "Allow",
        "Action": [
            "iam:ChangePassword",
            "iam:ListSSHPublicKeys",
            "iam:ListAccessKeys",
            "iam:ListVirtualMFADevices",
            "iam:ListMFADevices",
            "iam:ListSiginingCertificates",
            "iam:CreateVirtualMFADevice",
            "iam:ResyncMFADevice",
            "iam:EnableMFADevice",
            "iam:DeactivateMFADevice",
            "iam:DeleteVirtualMFADevice",
            "iam:CreateAccessKey",
            "iam:UpdateLoginProfile",
            "iam:GetLoginProfile",
            "iam:DeleteAccessKey",
            "iam:UpdateAccessKey",
            "iam:ListSSHPublicKeys",
            "iam:UpdateSSHPublicKey",
            "iam:UploadSSHPublicKey",
            "iam:GetUser"
         ],
        "Resource": [
            "arn:aws:iam::${account_id}:user/${user_email}",
            "arn:aws:iam::${account_id}:mfa/${user_email}"
        ]
      }
  ]
}
```
