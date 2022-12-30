resource "local_file" "pet" {
  filename     = var.filename
  content  = "My favorite pet is Mr.cat"
  #content  = "My favorite pet is ${random_pet.my-pet.id}"

  lifecycle {
    prevent_destroy = true
  }
}

resource "random_pet" "my-pet" {
  prefix = var.prefix
  separator = var.separator
  length = var.length
}