# Configura o Internet Gateway
resource "oci_core_internet_gateway" "igw" {
  compartment_id = var.oci_identity_compartment_network
  display_name   = "Internet Gateway"
  vcn_id = oci_core_virtual_network.vcn.id
}

# Associa o Internet Gateway à rota padrão da subnete pública
resource "oci_core_route_table_attachment" "igw_attachment" {
  subnet_id     = oci_core_subnet.public_subnet.id
  route_table_id = oci_core_route_table.public.id

}





