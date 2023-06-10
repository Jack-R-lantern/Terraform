variable "name" {
  description = "This_is_Prefix_Name"
  type = string
}

variable "profile" {
  description =	"select dev, stg, prod"
  type = string
}

variable "vpc_cidr" {
  description = "vpc_cidr"
  type = string
}
