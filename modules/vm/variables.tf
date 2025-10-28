variable "name" {
  type = string
}

variable "target_node" {
  type = string
}

variable "template_id" {
  type = number
}

variable "storage" {
  type = string
}

variable "bridge" {
  type = string
}

variable "gateway" {
  type = string
}

variable "ip" {
  type = string
}

variable "cores" {
  type    = number
  default = 2
}

variable "memory" {
  type    = number
  default = 2048
}

variable "disk_size" {
  type    = number
  default = 10
}

variable "ciuser" {
  type    = string
  default = "devuser"
}

variable "cipassword" {
  type    = string
  default = "devpass"
}

variable "sshkeys" {
  type    = string
  default = ""
}
