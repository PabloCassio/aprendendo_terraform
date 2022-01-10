variable "amis" {
    type = map(string)

    default = {
    "us-east-1" = "ami-04505e74c0741db8d"
    "us-east-2" = "ami-0fb653ca2d3203ac1"}  
}

variable "cdirs_acesso_remoto" {
    type = list(string)
    default = ["187.109.2.65/32", "192.32.153.79/32"]
  
}

variable "key_name" {
    default = "terraform_aws"
  
}