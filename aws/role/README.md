## A Sample role
```
module "role" {
source             = "github.com/cloudveto/terraform-modules/aws/role"
account_id         = var.account_id
name               = "${var.name}-${var.environment}"
custom_policy      = "ecsTaskExecution_policy"
trust_relationship = "trust_relationship"
}
```

### A sample trust relationship (Ref: line 8)
```
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
          "Service": ["ecs-tasks.amazonaws.com","ec2.amazonaws.com","sns.amazonaws.com"]
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
```

### A sample ecs task definition policy for cluster (Ref: line 7)
```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "ECSTaskManagement",
            "Effect": "Allow",
            "Action": [
                "ec2:AttachNetworkInterface",
                "ec2:CreateNetworkInterface",
                "ec2:CreateNetworkInterfacePermission",
                "ec2:DeleteNetworkInterface",
                "ec2:DeleteNetworkInterfacePermission",
                "ec2:Describe*",
                "ec2:DetachNetworkInterface",
                "elasticloadbalancing:DeregisterInstancesFromLoadBalancer",
                "elasticloadbalancing:DeregisterTargets",
                "elasticloadbalancing:Describe*",
                "elasticloadbalancing:RegisterInstancesWithLoadBalancer",
                "elasticloadbalancing:RegisterTargets",
                "route53:ChangeResourceRecordSets",
                "route53:CreateHealthCheck",
                "route53:DeleteHealthCheck",
                "route53:Get*",
                "route53:List*",
                "route53:UpdateHealthCheck",
                "servicediscovery:DeregisterInstance",
                "servicediscovery:Get*",
                "servicediscovery:List*",
                "servicediscovery:RegisterInstance",
                "servicediscovery:UpdateInstanceCustomHealthStatus",
                "s3:*",
                "ecr:GetAuthorizationToken",
                "ecr:BatchCheckLayerAvailability",
                "ecr:GetDownloadUrlForLayer",
                "ecr:BatchGetImage",
                "ecr:PutImage",
                "ecr:InitiateLayerUpload",
                "ecr:UploadLayerPart",
                "ecr:CompleteLayerUpload",
                "logs:GetLogRecord",
                "logs:DeleteSubscriptionFilter",
                "logs:StartQuery",
                "logs:DeleteLogStream",
                "logs:GetLogDelivery",
                "logs:ListLogDeliveries",
                "logs:CreateExportTask",
                "logs:DeleteResourcePolicy",
                "logs:CreateLogStream",
                "logs:DeleteMetricFilter",
                "logs:TagLogGroup",
                "logs:CancelExportTask",
                "logs:DeleteRetentionPolicy",
                "logs:GetLogEvents",
                "logs:DeleteLogDelivery",
                "logs:AssociateKmsKey",
                "logs:FilterLogEvents",
                "logs:PutDestination",
                "logs:DisassociateKmsKey",
                "logs:UntagLogGroup",
                "logs:DescribeLogGroups",
                "logs:DeleteLogGroup",
                "logs:PutDestinationPolicy",
                "logs:StopQuery",
                "logs:TestMetricFilter",
                "logs:DeleteDestination",
                "logs:PutLogEvents",
                "logs:CreateLogGroup",
                "logs:PutMetricFilter",
                "logs:CreateLogDelivery",
                "logs:PutResourcePolicy",
                "logs:GetQueryResults",
                "logs:UpdateLogDelivery",
                "logs:PutSubscriptionFilter",
                "logs:PutRetentionPolicy",
                "logs:GetLogGroupFields",
                "sns:*",
                "sqs:*",
                "ses:*"
            ],
            "Resource": "*"
        },
        {
            "Sid": "ECSTagging",
            "Effect": "Allow",
            "Action": [
                "ec2:CreateTags"
            ],
            "Resource": "arn:aws:ec2:*:*:network-interface/*"
        },
        {
            "Sid": "CWLogGroupManagement",
            "Effect": "Allow",
            "Action": [
                "logs:CreateLogGroup",
                "logs:DescribeLogGroups",
                "logs:PutRetentionPolicy"
            ],
            "Resource": "arn:aws:logs:*:*:log-group:/aws/ecs/*"
        },
        {
            "Sid": "CWLogStreamManagement",
            "Effect": "Allow",
            "Action": [
                "logs:CreateLogStream",
                "logs:DescribeLogStreams",
                "logs:PutLogEvents"
            ],
            "Resource": [
                "arn:aws:logs:*:*:log-group:/aws/ecs/*:log-stream:*",
                "arn:aws:logs:*:*:log-group:*"
            ]
        }
    ]
}
```