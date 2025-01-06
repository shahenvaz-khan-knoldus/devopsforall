variable "app_name" {
  default = "developapp"
  description = "value"
  type = string
}

variable "cidr_block" {
  default = "20.0.0.0/16"
}

variable "ami_id" {
  default = "ami-0e2c8caa4b6378d8c"
}