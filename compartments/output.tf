# Saída dos valores dos compartimentos criados Network/Intances

output "oci_identity_compartment_network" {
  value = oci_identity_compartment.network
}

output "oci_identity_compartment_instances" {
  value = oci_identity_compartment.instances
}

output "oci_identity_compartment_storage" {
  value = oci_identity_compartment.storage
}