variable "filename" {
  type = list(string)
  #type = set(string)
  default =  [
    #"/home/development/terraform-training/07-terraform-meta-arguments/02-foreach-example/pets.txt",
    "/home/development/terraform-training/07-terraform-meta-arguments/02-foreach-example/cats.txt",
    "/home/development/terraform-training/07-terraform-meta-arguments/02-foreach-example/dogs.txt"
  ]
}