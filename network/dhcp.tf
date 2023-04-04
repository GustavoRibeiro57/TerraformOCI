# # Criando dhcp

# resource "oci_core_dhcp_options" "dhcp_options" {
#   compartment_id = var.oci_identity_compartment_network
#   vcn_id = oci_core_virtual_network.vcn.id
#   display_name   = "dhcp_options"

#     options {
#     type  = "DomainNameServer"
#     server_type = "VcnLocalPlusInternet" 
#   }

#     options {
#     type  = "SearchDomain"
#     search_domain_names = ["default"]
#   }

# }

