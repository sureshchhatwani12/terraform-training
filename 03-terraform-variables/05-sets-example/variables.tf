# variable "prefix" {
#   default = ["Mr", "Mrs", "Sir"]
#   type = set(string)
# }

# Cannot contain duplicate if we are using set.
variable "prefix" {
  default = ["Mr", "Mrs", "Sir", "Mr", "Mr"]
  type = set(string)
}

variable "fruit" {
  default = ["apple", "banana"]
  type = set(string)
}

# Cannot contain duplicate if we are using set.
# variable "fruit" {
#   default = ["apple", "banana", "banana"]
#   type = set(string)
# }

variable "age" {
  default = [ 10 , 26 , 30]
  type = set(number)
}

# Cannot contain duplicate if we are using set.
# variable "age" {
#   default = [ 10 , 26 , 30, 10]
#   type = set(number)
# }