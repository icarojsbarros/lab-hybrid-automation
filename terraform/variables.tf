variable "aws_region" {
  description = "Região da AWS"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Nome do projeto para tags"
  type        = string
  default     = "lab-hybrid-automation"
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Nome da Key Pair na AWS"
  type        = string
}

variable "my_ip" {
  description = "Meu IP público no formato CIDR"
  type        = string
  validation {
    condition     = can(cidrnetmask(var.my_ip))
    error_message = "IP deve estar no formato CIDR, ex: 1.2.3.4/32"
  }
}
