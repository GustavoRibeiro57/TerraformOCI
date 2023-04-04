variable "oci_identity_compartment_storage" {
    type = string
    description = "Valor do compartimento storage pego no output de compartment"
}

variable "oci_core_instance_srv01" {
    type = string
    description = "Ocid da Instancia srv01"
}

variable "availability_domain" {
    type = string
    description = "availability_domain"
}

variable "objectstorage_namespace" {
    type = string
    description = "Namespace do Object Storage"
}