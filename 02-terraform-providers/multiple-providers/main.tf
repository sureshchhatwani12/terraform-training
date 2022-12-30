resource "local_file" "things-to-do" {
  filename     = "/home/development/terraform-training/02-terraform-providers/multiple-providers/things-to-do.txt"
  content  = "Clean my room before Christmas\nComplete the CKA Certification!"
}
resource "local_file" "more-things-to-do" {
  filename     = "/home/development/terraform-training/02-terraform-providers/multiple-providers/more-things-to-do.txt"
  content  = "Learn how to play Astronomia on the guitar!"
}

resource "random_pet" "my-pet" {
  prefix = "Mr"
  separator = "-"
  length = 1
}