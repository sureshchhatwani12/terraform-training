resource "local_file" "root_level" {
  filename = "/home/development/terraform-training/09-terraform-overrides/02-resource-block-example/root_level.txt"
  content = "This is root level"
}

resource "local_file" "override_level" {
  filename = "/home/development/terraform-training/09-terraform-overrides/02-resource-block-example/override_level.txt"
  content = "This is override level 1"

  lifecycle {
    #ignore_changes = all
    #prevent_destroy = true
    create_before_destroy = false
  }
}