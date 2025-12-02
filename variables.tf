# String
variable "env"{
  type = string
  default = "dev"
}
output "env" {
  value = var.env
}

variable "env1"{
  type=string
  default="dev"
}

output "env1" {
  value = "${var.env}01"
}
# Number
variable "instance_count"{
  type=number
  default = 100
}
output "count" {
  value = var.instance_count
}
# boolean
variable "bool"{
  type=bool
  default=false
}
output "bool" {
  value = var.bool
}
# list
variable "zones"{
  type=list(string)
  default = ["us-east-1a","us-east-1b","us-east-1c"]
}
output "zones" {
  value = var.zones[0]
}
# map
variable "val"{
  type = map
  default = {name="xxx",age=17}
}
output "val" {
  value = var.val["name"]
}
# any
# if type is any then end user should pass any type of value
variable "any_val"{
  type = any
}
output "any_val" {
  value = var.any_val
}

