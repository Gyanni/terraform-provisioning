resource "aws_ec2_tag" "vpc_tags" {
  for_each    = { for idx, tag in local.vpc_tags_list : tostring(idx) => tag }
  resource_id = aws_vpc.default.id
  key         = each.value.key
  value       = each.value.value
}
resource "aws_ec2_tag" "public_subnet_tags" {
  for_each    = { for entry in local.public_subnets_tags_flat : entry.static_key => entry }
  resource_id = aws_subnet.public[each.value.subnet_idx].id
  key         = each.value.key
  value       = each.value.value
}
resource "aws_ec2_tag" "private_subnet_tags" {
  for_each    = { for entry in local.private_subnets_tags_flat : entry.static_key => entry }
  resource_id = aws_subnet.private[each.value.subnet_idx].id
  key         = each.value.key
  value       = each.value.value
}