## A sample code base to create www website.

### To create ecs cluster
```
module "ecs_cluster" {
  source      = "github.com/cloudveto/terraform-modules/aws/ecs-cluster"
  common_tags = var.tags
  environment = var.environment
  name        = "${var.name}-${var.environment}"
}
```

### To create ecs service and task definition
```
module "www_ecs_service" {
  source              = "github.com/cloudveto/terraform-modules/aws/ecs/ecs-service"
  cluster_id          = module.ecs_cluster.aws_ecs_cluster
  common_tags         = var.tags
  desired_count       = 1
  environment         = var.environment
  lb_tg_arn           = module.alb_tg_www_443.alb_target_group_arn
  name                = "${var.name}-www"
  port                = 8080
  security_group_id   = [module.sg.sg_id]
  subnets             = [module.vpc.subnet_pri_az1_id, module.vpc.subnet_pri_az2_id]
  task_definition_arn = module.www_ecs_task_definition.aws_ecs_task_definition
  aws_alb             = module.alb_www.alb_id
  assign_public_ip    = false
}

module "www_ecs_scale" {
  source                      = "github.com/cloudveto/terraform-modules/aws/ecs/ecs-scale"
  account_id                  = var.account_id
  common_tags                 = var.tags
  ecs_cluster_name            = module.ecs_cluster.aws_ecs_cluster_name
  ecs_service_name            = module.www_ecs_service.aws_ecs_service_name
  environment                 = var.environment
  scale_depends_on            = [module.www_ecs_service.aws_ecs_service]
  max_count                   = "10"
  min_count                   = "1"
  name                        = "${var.name}-www"
  scale_down_cooldown_seconds = "300"
  scale_up_cooldown_seconds   = "300"
  threshold_high              = var.threshold_high
  threshold_low               = var.threshold_low
  alarm_metric_name           = "CPUUtilization"
  alarm_name_high             = "www-${var.name}-${var.environment}-high"
  alarm_name_low              = "www-${var.name}-${var.environment}-low"
  alarm_period_high           = "60"
  alarm_period_low            = "60"
  alarm_statistic_high        = "Average"
  alarm_statistic_low         = "Average"
}

module "www_ecs_task_definition" {
  source                    = "github.com/cloudveto/terraform-modules/aws/ecs/ecs-task-definition"
  account_id                = var.account_id
  common_tags               = var.tags
  environment               = var.environment
  execution_role_arn        = module.role_ecs.role_arn
  family                    = "${var.name}-www-${var.environment}"
  region                    = var.region
  fargate_cpu               = "1024"
  fargate_memory            = "2048"
  name                      = "${var.name}-www"
  port                      = 8080
  task-definition-file-name = "task-definitions"
  task_role_arn             = module.role_ecs.role_arn
}
```

### To create ecr
```
module "ecr_www" {
  source          = "github.com/cloudveto/terraform-modules/aws/ecs/ecr"
  environment     = var.environment
  name            = "${var.name}-www-${var.environment}"
  common_tags     = var.tags
}
```

### To push image to ecr
```
module "image_www" {
  source              = "github.com/cloudveto/terraform-modules/aws/ecs/ecr-image"
  image_name          = "${var.name}-www-${var.environment}"
  repository_url      = "${var.account_id}.dkr.ecr.ap-south-1.amazonaws.com/${var.name}-www-${var.environment}"
  role_name           = module.role.role_name
  script_name         = "deploy_iam"
  source_path         = "${path.module}/../web/"
  tag                 = "latest"
  ecs_cluster_name    = module.ecs_cluster.aws_ecs_cluster_name
  ecs_service_name    = module.www_ecs_service.aws_ecs_service_name
  ecs_task_definition = module.www_ecs_task_definition.aws_ecs_task_definition
  account_id          = var.account_id
  region              = var.region
}
```

### To create cloud watch logs
```
module "ecs_cwlg_www" {
  source = "github.com/cloudveto/terraform-modules/aws/cloudwatch/cw-lg"
  environment = var.environment
  name = "/aws/ecs/${var.name}-www-${var.environment}"
}
```

### A sample task definition task-definitions.json.tpl (Ref: line 67)
```
[
  {
    "name": "${name}",
    "image": "${account_id}.dkr.ecr.${region}.amazonaws.com/${name}-${environment}:latest",
    "essential": true,
    "portMappings": [
      {
        "containerPort": ${port},
        "hostPort": ${port}
      }
    ],
    "networkMode": "awsvpc",
    "task_role_arn": "${task_role_arn}",
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/aws/ecs/${name}-${environment}",
        "awslogs-region": "${region}",
        "awslogs-stream-prefix": "ecs"
      }
    }
  }
]
```