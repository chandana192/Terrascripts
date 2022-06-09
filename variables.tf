variable "projectid" {
    type = string
    description = "this is for passing the project id value"
    default = "testing-jenkins-350516"
  
}

variable "networkname" {
    type = string
    default = "gcp-b12-network"
  
}
variable "mtu" {
    type = number
    default = "1460"
  
}
variable "routemode" {
    type = string
    default = "REGIONAL"
}

variable "auto_create_subnetworks" {
    type = string
    default = "false"
}
variable "subnetname" {
    type = list(string)
default = ["subnet1", "subnet2", "subnet3","subnet4"]


}
variable "cidr" {
type = list(string)
default = ["10.10.0.0/24","10.10.1.0/24","10.10.2.0/24","10.10.4.0/24"]
}
   

variable "region" {
    type = string
    default = "us-central1"
}