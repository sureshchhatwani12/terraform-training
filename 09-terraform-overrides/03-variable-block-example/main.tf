variable "root_level" {
  type = string
  default = "String Type"
}

output "result" {
  value = var.root_level
}