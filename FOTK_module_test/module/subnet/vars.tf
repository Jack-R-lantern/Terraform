variable "vpc_id" {
  
}

variable "cidr" {
  description = "select cidr"
  type = string
}

variable "az" {
  description = "select az"
  type = string
  default = "ap-northeast-2a"
}

variable "name" {
  description = "name"
  type = string
  default = "fotk"
}

variable "profile" {
  description = "select public, private, secure"
  type = string
  default = "public"
}