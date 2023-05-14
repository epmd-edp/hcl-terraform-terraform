resource "random_integer" "example" {
  min = 1
  max = 50000
  keepers = {
    example = var.example
  }
}

resource "random_id" "example" {
  byte_length = 8
}

locals {
  example = format("%v %v", var.example, join("", random_integer.example[*].result))
}
