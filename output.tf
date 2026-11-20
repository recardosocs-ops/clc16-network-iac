# --- VPC e Internet Gateway ---
output "id_vpc" {
  value = aws_vpc.clc_vpc.id
}

output "igw_clc_vpc" {
  value = aws_internet_gateway.gw_clc_vpc.id
}

# --- Route Table Pública e Subnet Pública 1a ---
output "public_rt" {
  value = aws_route_table.public_rt.id
}

output "public_subnet_1a" {
  value = aws_subnet.public_subnet_1a.id
}

output "rt_pub_association_subnet_1a" {
  value = aws_route_table_association.rt_pub_association_subnet_1a.id
}

# --- Subnet Privada 1a, NAT Gateway e EIP ---
output "private_subnet_1a" {
  value = aws_subnet.private_subnet_1a.id
}

output "eip_nat_gw_1a" {
  value = aws_eip.eip_nat_gw_1a.id
}

output "nat_gw_1a" {
  value = aws_nat_gateway.nat_gw_1a.id
}

output "private_rt_1a" {
  value = aws_route_table.private_rt_1a.id
}

output "rt_priv_association_subnet_1a" {
  value = aws_route_table_association.rt_priv_association_subnet_1a.id
}

# Fase 1
output "public_subnet_1c" {
  value = aws_subnet.public_subnet_1c.id
}

output "private_subnet_1c" {
  value = aws_subnet.private_subnet_1c.id
}

# Fase 2
output "rt_pub_association_subnet_1c" {
  value = aws_route_table_association.rt_pub_association_subnet_1c.id
}

# Fase 3
output "eip_nat_gw_1c" {
  value = aws_eip.eip_nat_gw_1c.id
}

output "nat_gw_1c" {
  value = aws_nat_gateway.nat_gw_1c.id
}

# Fase 4
output "private_rt_1c" {
  value = aws_route_table.private_rt_1c.id
}

output "rt_priv_association_subnet_1c" {
  value = aws_route_table_association.rt_priv_association_subnet_1c.id
}

# Fase 5 - EC2
output "ec2_id" {
  value = aws_instance.web_server.id
}

output "ec2_security_group_id" {
  value = aws_security_group.web_sg.id
}

output "ec2_public_ip" {
  value = aws_instance.web_server.public_ip
}