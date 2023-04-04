resource "oci_core_instance" "srv01" {
  availability_domain = var.availability_domain
  compartment_id      = var.oci_identity_compartment_instances
  shape               = "VM.Standard.E2.1.Micro"
  display_name        = "srv01"
  
  create_vnic_details {
    assign_public_ip          = true
    subnet_id                 = var.oci_core_subnet_public_subnet
    display_name = "srv01"
    hostname_label   = "srv01"
    skip_source_dest_check = false
  }    

  shape_config {
    memory_in_gbs = "1"
    ocpus         = "1"
  }

  source_details {
    source_id   = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaamvxipgtbsj4eocdxihklbgkem5rwmtxewgm5sxnr4hrd72qpp3fq"                   
    source_type = "image"
  }

  metadata = {
  ssh_authorized_keys = file(var.ssh_public_key_path)
}

    preserve_boot_volume = false
  
}

