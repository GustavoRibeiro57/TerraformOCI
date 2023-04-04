variable vcn_cidr_block {
  type        = string
  default     = ""
  description = "cidr da vcn"
}

variable "subnet_public_cidr_block" {
  type = string
  description = "cidr da subnet publica"
}

variable "subnet_private_cidr_block" {
  type = string
  description = "cidr da subnet privada"
}

variable oci_identity_compartment_network {
  type        = string
  default     = ""
  description = "Valor do compartimento network pego no output de compartment"
}





