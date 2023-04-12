variable "filename" {
    default = "/root/pets.txt"
    type = string
    description = "name of the file."
}

variable "content" {
    default = "we love pets"  
}


#args are - 
# default - default value for var
# type - type of input
# description - 

type - 

list - array with positional parameter can be accessed by list[0]
map  - key value pair. can be accessed by var.map["key name"]
set - similar to list, but  can not have duplicate values.
object - object defines as key value inside {}

variable "objectexample" {
    type = object({
        name = string
        value = string
        anotherprop = string
    })
    default = {
        name = "name"
        value = "value"
        anotherprop = "property"
    }
  
}

tuple - similar to list with sequence of elements. tuple can have elements of different types

variable "tupleex" {
    type = tuple([string,number,bool])
    default = [
    "test",1,false]
  
}


method of passing variable "" {
  - variable with name TF_VAR_variablename
  - terrafor.tfvars file
  - cmd line input
  - tfvars file not named terraform.auto. tfvars.
}
variable definition precedence 

    - environament variables
    - value in terraform.tfvars file.
    - *.auto.tfvars file in alphabatical file.
    - -var or -var-file takes highest priority.