variable "prefix" {
  default = ["Mr", "Mrs", "Sir"]
  type = list(string)
}

# Fails as default list is of string and not of number
# variable "prefix" {
#   default = ["Mr", "Mrs", "Sir"]
#   type = list(number)
# }


variable "cats" {
  default = {
    "color": "brown"
    "name": "bella"
  }
  type = map(string)
}

variable "pet_count" {
  default = {
    "dogs": "2"
    "cats": 1
    "fish": 3
  }
  type = map(number)
}