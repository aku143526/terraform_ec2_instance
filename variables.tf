variable "region" {
        type = string
        default = "ap-south-1"
}

variable "sec_name" {
        type = string
        default = "my_new_sg3"
}

variable "sec_desc" {
        type = string
        default = "i have created sg3"
}

variable "vpc_id" {
        type = string
        default = "vpc-001b06737af5b59da"
}

variable "create_before_destroy" {
  type    = bool
  default = true
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "key_name" {
  type    = string
  default = "new-2023"
}

variable "ami" {
  type    = string
  default = "ami-0f69bc5520884278e"
}

variable "tag_name" {
  type    = string
  default = "anjali-vm-new"
}
