variable "project_name" {
  type = string
}

variable "region" {
  type = string
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR principal da VPC"
}

variable "vpc_additional_cidrs" {
  type        = list(string)
  default     = []
  description = "Lista de CIDR's adicionais para a VPC"
}

variable "public_subnets" {
  description = "Lista de public subnets da VPC"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}


variable "private_subnets" {
  description = "Lista de private subnets da VPC"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}

variable "database_subnets" {
  description = "Lista de private subnets da VPC"
  default     = null
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}
