# Create a VPC
resource "aws_vpc" "dev_vpc_proj_1" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_tag_name
  }
}

# Create Public Subnets
resource "aws_subnet" "public" {
  count             = length(var.cidr_public_subnet)
  vpc_id            = aws_vpc.dev_vpc_proj_1.id
  cidr_block        = element(var.cidr_public_subnet, count.index)
  availability_zone = element(var.eu_availability_zone, count.index)

  tags = {
    Name = "${var.vpc_tag_name}-public-${count.index + 1}"
  }
}

# Create Private Subnets
resource "aws_subnet" "private" {
  count             = length(var.cidr_private_subnet)
  vpc_id            = aws_vpc.dev_vpc_proj_1.id
  cidr_block        = element(var.cidr_private_subnet, count.index)
  availability_zone = element(var.eu_availability_zone, count.index)

  tags = {
    Name = "${var.vpc_tag_name}-private-${count.index + 1}"
  }
}

# Create Internet Gateway
resource "aws_internet_gateway" "dev_vpc_proj_1_igw" {
  vpc_id = aws_vpc.dev_vpc_proj_1.id

  tags = {
    Name = "dev_vpc_proj_1_igw"
  }
}