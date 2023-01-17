/*
  Values in this file can be called as var.[variable name], or modified in command line like 'terraform apply -var "server1=[some text]"'.
*/

variable "testserver" {
  description = "terraform test server"
  type = string
  default = "terraform test server"
}