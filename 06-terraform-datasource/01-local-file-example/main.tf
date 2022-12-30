resource "local_file" "pet" {
  filename = "/home/development/terraform-training/06-terraform-datasource/01-local-file-example/pets.txt"
  content = data.local_file.dog.content

  lifecycle {
    ignore_changes = all
  }
}

data "local_file" "dog" {
  filename = "/home/development/terraform-training/06-terraform-datasource/01-local-file-example/dogs.txt"
}