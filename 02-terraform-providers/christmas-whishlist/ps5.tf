resource "local_file" "ps5" {
  filename     = "/home/development/terraform-training/02-terraform-providers/christmas-whishlist/ps5.txt"
  content  = "And a PS5!"
}
