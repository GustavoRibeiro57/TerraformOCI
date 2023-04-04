# Define as subnets da rede

# Subnet pública
resource "oci_core_subnet" "public_subnet" {
 
  compartment_id = var.oci_identity_compartment_network
  cidr_block     = var.subnet_public_cidr_block
  vcn_id         = oci_core_virtual_network.vcn.id
  display_name   = "public_subnet"
  dns_label = "pub"
  route_table_id = oci_core_route_table.public.id
  #dhcp_options_id = oci_core_dhcp_options.dhcp_options.id
  security_list_ids = [oci_core_security_list.public_sl.id]

}

# Subnet privada
resource "oci_core_subnet" "private_subnet" {
  compartment_id = var.oci_identity_compartment_network
  cidr_block     = var.subnet_private_cidr_block
  vcn_id         = oci_core_virtual_network.vcn.id
  display_name   = "private_subnet"
  dns_label = "priv"
  route_table_id = oci_core_route_table.private.id
  #dhcp_options_id = oci_core_dhcp_options.dhcp_options.id
  security_list_ids = [oci_core_security_list.private_sl.id]
  prohibit_public_ip_on_vnic = true

}


