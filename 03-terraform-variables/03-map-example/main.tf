resource "local_file" "my-pets" {
  filename     = var.filename
  content  = var.filecontent["statement2"]
}