resource "oci_core_volume" "block_volume" {
  compartment_id = var.oci_identity_compartment_storage
  availability_domain = var.availability_domain
  display_name = "BV_srv01"
  size_in_gbs = "50"
}




