variable "person" {
  type = object({
    name: string    
    age:number
    hobby = list(string)
    isWorking: bool
  })

  default = {
    age = 30
    hobby = [ "Reading", "Movies", "Animes" ]
    isWorking = true
    name = "Sam"
  }

  sensitive = false
}

output "object_example" {
  value = var.person.name
}