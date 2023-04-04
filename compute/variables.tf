variable "availability_domain" {
    type = string
    description = "availability_domain"
}

variable "ssh_public_key_path" {
    type = string
    description = "Chave de conexao ssh"
}

variable "oci_identity_compartment_instances" {
    type = string
    description = "Valor do compartimento instances pego no output de compartment"
}

variable "oci_core_subnet_public_subnet" {
    type = string
    description = "Valor subnet publica pego no output de network"
}

variable "oci_core_subnet_private_subnet" {
    type = string
    description = "Valor subnet privada pego no output de network"
}