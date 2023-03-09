

resource "aws_subnet" "EKS_subnets" {
  for_each = var.subnets
 
  availability_zone_id = each.value["az1"]
  cidr_block = each.value["cidr"]
  map_public_ip_on_launch = true
  vpc_id = "${var.vpc_id}"
  tags = {
    Name = "${var.subnettag}-${each.key}"
    Purpose ="${var.Purpose}"
    Owner = "${var.Owner}"
  }  
}

output "subnet_id" {
    value = tomap({
        for k, s in aws_subnet.EKS_subnets : k => s.id
    })
}

