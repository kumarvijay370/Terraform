#using attributes from one resource in another resource.

resource "local_file" "pet" {
    filename = var.filename
    content = "my favourity pet is ${random_pet.my-pet.id}"
  
}

resource "random_pet" "my-pet" {
    prefix = var.prefix
    seperator = var.seperator
    length = var.length
}