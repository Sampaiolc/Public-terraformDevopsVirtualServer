variable "location" {
  default = "westus2"
  type    = string
}
variable "project" {
  default = "tf-linux"
  type    = string
}
variable "vm_size" {
  default = "Standard_B1s"
  type    = string
}

variable "tag-environment" {
  type = list(string)
  default = [
    "Terraform lab"
  ]

}
variable "vNet-space" {
  type = list(string)
  default = [
    "10.20.0.0/24"
  ]

}
variable "vNet-subnet-space" {
  type = list(string)
  default = [
    "10.20.0.0/28"
  ]

}
variable "adminUser" {
  type    = string
  default = "admaz"

}

variable "long_key" {
  type = string
  default = <<EOF
This is a long key.
Running over several lines.
EOF
}
