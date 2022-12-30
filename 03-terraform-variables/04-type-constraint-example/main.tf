resource "random_pet" "my-pet" {
  prefix = var.prefix[0]
}

output "dog_count" {
  value = var.pet_count["dogs"]
}

output "cat_name" {
  value = var.cats["name"]
}