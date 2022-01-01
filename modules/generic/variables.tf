variable "region" {
    type = string
}

variable "instance_name"{
    type = string
}
variable "image_name" {
    type = string
}

variable "flavor_name" {
    type = string
}

variable "key_pair" {
    type = string
    default = "cloud"
}

variable "security_groups" {
    type = list
}

variable "user_data" {
    type = string
}

variable "network" {
    type = string
}

variable "availability_zone" {
    type = string

}

variable "number_nodes"{
    type = number
    default = 1
}
variable "puppet_environment"{
    type = string
    default = ""
}

variable "puppet_cluster"{
    type = string
    default = ""
}

variable "puppetmaster_ip"{
    type = string
    default = ""
}

variable "tags" {
    type = list
    default = [""]
}
