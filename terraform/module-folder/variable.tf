variable "rg_name" {
    type = string
    description = "Resource group name"
}

variable "loc" {
    type = string
    description = "Location name"
}

variable "vnet_name" {
    type = string
    description = "Virtual network name"
}

variable "subnet_name" {
    type = string
    description = "Subnet name"
}

variable "nic_name" {
    type = string
    description = "Nic card name"
}

variable "ipconfigname" {
    type = string
    description = "Ip config name"
}

variable "vm_name"{
    type = string
    description = "Name of virtual machine"
}

variable "size"{
    type = string
    description = "Size of VM"
}

variable "username"{
    type = string
    description = "Username of user to login"
}

variable "password"{
    type = string
    description = "Password of user to login"
} 

variable "cache"{
    type = string
    description = "Cache type"
}

variable "acctype"{
    type = string
    description = "The storage account type"
}

variable "version"{
    type = string
    description = "The version of OS"
}

variable "pub"{
    type = string
    description = "The publisher of OS"
}

variable "offer"{
    type = string
    description = "The offer type"
}

variable "sku"{
    type = string
    description = "SKU size"
}