variable "filename" {
  default = "/home/development/terraform-training/03-terraform-variables/input-variables/things-to-do.txt"
  sensitive = true
}

variable "content" {
  default = "Clean my room before Christmas\nComplete the CKA Certification!"
}

variable "prefix" {
  default = "1"
}

variable "separator" {
  default = "1"
}

variable "length" {
  default = "1"
}