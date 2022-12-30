resource "local_file" "pet" {
 filename = "/home/development/terraform-training/01-terraform-local-file/pets.txt" 
 content = "We love pets!!"
} 

# local = provider
# file = resource
