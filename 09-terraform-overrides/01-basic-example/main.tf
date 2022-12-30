resource "local_file" "root_level" {
  filename = "/home/development/terraform-training/09-terraform-overrides/root_level.txt"
  content = "This is root level"
}

resource "local_file" "override_level" {
  filename = "/home/development/terraform-training/09-terraform-overrides/override_level.txt"
  content = "This is root level"
}