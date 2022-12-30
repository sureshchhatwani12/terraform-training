resource "local_file" "pet" {
  filename = var.filename[count.index]
  content = "We love pets!"
  count = length(var.filename)
}