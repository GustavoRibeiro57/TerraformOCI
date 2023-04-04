#Criando vcn

resource "oci_core_virtual_network" "vcn" {
  compartment_id = var.oci_identity_compartment_network
  cidr_block = var.vcn_cidr_block
  display_name = "MyVCN"
  dns_label = "myvcn"
}