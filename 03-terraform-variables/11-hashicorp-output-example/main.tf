# main.tf

module "foo" {
  source = "./mod"
}

resource "test_instance" "x" {
  some_attribute = module.foo.a # resource attribute references a sensitive output
}

output "out" {
  value     = "xyz"
  sensitive = true
}

# mod/main.tf, our module containing a sensitive output

output "a" {
  value     = "secret"
  sensitive = true
}
