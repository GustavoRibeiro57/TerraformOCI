# Cria o Security List para as Subnets Publica e Privada. 

# A subnet pública tem uma regra de ingresso permitindo o tráfego SSH (porta 22) de qualquer fonte.
# A subnet privada não tem nenhuma regra de ingresso
# Ambas têm uma regra de saída permitindo todo o tráfego de qualquer destino.

resource "oci_core_security_list" "public_sl" {
  compartment_id = var.oci_identity_compartment_network
  display_name = "Public SecurityList"
  vcn_id = oci_core_virtual_network.vcn.id
  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol = "all"
    stateless = false
  }
  ingress_security_rules {
    source = "186.248.220.0/24"
    protocol = "all"    
  }
  ingress_security_rules {
    source = "0.0.0.0/0"
    protocol = "6"
    tcp_options {
      source_port_range {
        min = "22"
        max = "22"
      }    
    }
  }
  ingress_security_rules {
    source = "0.0.0.0/0"
    protocol = "6"
    tcp_options {
      source_port_range {
        min = "80"
        max = "80"
      }    
    }
  }
  ingress_security_rules {
    source = "0.0.0.0/0"
    protocol = "6"
    tcp_options {
      source_port_range {
        min = "443"
        max = "443"
      }    
    }
  }
  ingress_security_rules {
    source = "0.0.0.0/0"
    protocol = "1"
    icmp_options {
      type = 0
      code = 0
    }
    
  }
}

resource "oci_core_security_list" "private_sl" {
  compartment_id = var.oci_identity_compartment_network
  display_name = "Private SecurityList"
  vcn_id = oci_core_virtual_network.vcn.id
  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol = "all"
    stateless = false
  }
}