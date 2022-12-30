resource "local_file" "pet" {
  filename = each.value
  content = ""
  
  # To use below we need to have variables as Set in variables file
  #for_each = var.filename

  for_each = toset(var.filename)
}

output "pets" {
  value = local_file.pet
  sensitive = true
}