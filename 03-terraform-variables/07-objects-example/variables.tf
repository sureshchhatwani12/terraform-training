# variable "kitty" {
#   type = tuple([string, number, bool])
#   default = ["cat",7,false]
# }

# Failed Scenario as tuple is only expecting three values
variable "kitty" {
  type = tuple([string, number, bool, string])
  default = ["cat",7,false,"dogs"]
}

output "example" {
  value = var.kitty[0]
}