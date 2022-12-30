variable "filecontent" {
  type = map
  default = {
    "statement2" = "We love animals!"
    "statement1" = "We love pets!"    
  }
}

variable "filename" {
  default = "/home/development/terraform-training/03-terraform-variables/input-variables/things-to-do.txt"
  sensitive = true
}