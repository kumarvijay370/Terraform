# <block> <parameter> {
#     key1 = value1
#     key2 = value2
# }

#black name,local=provider, file = resource 'pet = resource name'
#filename and content are arguments.
resource "local_file" "pet" {
    filename = "/root/pets.txt"
    content = "PETS GO HERE"
  
}