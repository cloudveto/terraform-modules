resource "aws_api_gateway_rest_api" "api_gw" {
  name        = var.name
  description = "API GW"
  #  body        = data.template_file.swagger_api.rendered
  #  binary_media_types = ["*/*"]
  endpoint_configuration {
    types = ["REGIONAL"]
  }
}

resource "aws_api_gateway_resource" "api_resource" {
  rest_api_id = aws_api_gateway_rest_api.api_gw.id
  parent_id   = aws_api_gateway_rest_api.api_gw.root_resource_id
  path_part   = var.path_part
}

resource "aws_api_gateway_method" "api_method" {
  rest_api_id   = aws_api_gateway_rest_api.api_gw.id
  resource_id   = aws_api_gateway_resource.api_resource.id
  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "api_gw_integration" {
  rest_api_id = aws_api_gateway_rest_api.api_gw.id
  resource_id = aws_api_gateway_resource.api_resource.id
  http_method = aws_api_gateway_method.api_method.http_method
  type        = "MOCK"
}

resource "aws_api_gateway_deployment" "api_deploy" {
  stage_name  = var.environment
  rest_api_id = aws_api_gateway_rest_api.api_gw.id
  depends_on  = [aws_api_gateway_integration.api_gw_integration]
}

#resource "aws_api_gateway_vpc_link" "api_vpc_link" {
#  name        = var.name
#  description = "API GW VPC Link "
#  target_arns = var.target_arns
#  tags = {
#    Name        = var.name
#    Environment = var.environment
#  }
#}