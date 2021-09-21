####################    VPC    ####################
data "aws_vpc" "vpc" {
  tags = {
    Name = var.vpc_id
  }
}

#################### PUB Layer ####################
data "aws_subnet" "pub_subnet_1" {
  vpc_id = data.aws_vpc.vpc.id
  filter {
    name   = "tag:Name"
    values = ["${var.search_pattern}-pub-az1"]
  }
}

data "aws_subnet" "pub_subnet_2" {
  vpc_id = data.aws_vpc.vpc.id
  filter {
    name   = "tag:Name"
    values = ["${var.search_pattern}-pub-az2"]
  }
}

data "aws_subnet_ids" "pub" {
  vpc_id = data.aws_vpc.vpc.id
  filter {
    name   = "tag:Name"
    values = ["${var.search_pattern}-pub-*"]
  }
}

#################### Data Layer ####################
data "aws_subnet" "data_subnet_1" {
  vpc_id = data.aws_vpc.vpc.id
  filter {
    name   = "tag:Name"
    values = ["${var.search_pattern}-data-az1"]
  }
}

data "aws_subnet" "data_subnet_2" {
  vpc_id = data.aws_vpc.vpc.id
  filter {
    name   = "tag:Name"
    values = ["${var.search_pattern}-data-az2"]
  }
}

data "aws_subnet_ids" "data" {
  vpc_id = data.aws_vpc.vpc.id
  filter {
    name   = "tag:Name"
    values = ["${var.search_pattern}-data-*"]
  }
}
#################### Private Layer ####################
data "aws_subnet" "pri_subnet_1" {
  vpc_id = data.aws_vpc.vpc.id
  filter {
    name   = "tag:Name"
    values = ["${var.search_pattern}-pri-az1"]
  }
}

data "aws_subnet" "pri_subnet_2" {
  vpc_id = data.aws_vpc.vpc.id
  filter {
    name   = "tag:Name"
    values = ["${var.search_pattern}-pri-az2"]
  }
}

data "aws_subnet_ids" "pri" {
  vpc_id = data.aws_vpc.vpc.id
  filter {
    name   = "tag:Name"
    values = ["${var.search_pattern}-pri-*"]
  }
}

###################default##########
