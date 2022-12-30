locals {
  service_name = "forum"
  owner        = "Community Team"
}

output "locals" {
  value = "${local.service_name} - ${local.owner}" # interpolation string
}