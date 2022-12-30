variable "user_information" {
  type = object({
    name    = string
    address = string
  })
  sensitive = true

  default = {
    address = "31 Sard"
    name = "Suresh"
  }
}

resource "local_resource" "a" {
  name    = var.user_information.name
  address = var.user_information.address
}
