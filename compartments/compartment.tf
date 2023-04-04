# Criando os compartimentos network / intances

resource "oci_identity_compartment" "network" {
  compartment_id = var.tenancy_ocid
  name           = "network"
  description      = "Compartimento de redes"
  enable_delete = true
}

resource "oci_identity_compartment" "instances" {
  compartment_id = var.tenancy_ocid
  name           = "instances"
  description      = "Compartimento de Instancias"
  enable_delete = true
}

resource "oci_identity_compartment" "storage" {
  compartment_id = var.tenancy_ocid
  name           = "storage"
  description      = "Compartimento de Armazenamento"
  enable_delete = true
}

