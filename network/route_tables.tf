# Criando a Tabela de rotas Publica/Privada

resource "oci_core_route_table" "public" {
  compartment_id = var.oci_identity_compartment_network
  vcn_id = oci_core_virtual_network.vcn.id
  display_name = "PublicRouteTable"

# Adiciona uma rota para a Internet
  route_rules {
    destination_type  = "CIDR_BLOCK"
    destination       = "0.0.0.0/0"
    network_entity_id = oci_core_internet_gateway.igw.id
  }

}

resource "oci_core_route_table" "private" {
  compartment_id = var.oci_identity_compartment_network
  vcn_id = oci_core_virtual_network.vcn.id
  display_name = "PrivateRouteTable"
}