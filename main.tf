terraform {
  required_providers {
    oci = {
      source = "hashicorp/oci"
    }
  }
}

module "compartments" {
  source = "./compartments" 
  tenancy_ocid = var.tenancy_ocid
}

module "network" {
  source = "./network"
  oci_identity_compartment_network = module.compartments.oci_identity_compartment_network.id
  vcn_cidr_block = var.vcn_cidr_block
  subnet_public_cidr_block = var.subnet_public_cidr_block
  subnet_private_cidr_block = var.subnet_private_cidr_block
      
depends_on = [
  module.compartments
  ]  
}

module "compute" {
  source = "./compute"
  oci_identity_compartment_instances = module.compartments.oci_identity_compartment_instances.id
  oci_core_subnet_public_subnet = module.network.oci_core_subnet_public_subnet.id
  oci_core_subnet_private_subnet = module.network.oci_core_subnet_private_subnet.id
  availability_domain = var.availability_domain
  ssh_public_key_path = var.ssh_public_key_path

depends_on = [
  module.network 
  ]  
}

module "storage" {
  source = "./storage"
  oci_identity_compartment_storage = module.compartments.oci_identity_compartment_storage.id
  oci_core_instance_srv01 = module.compute.oci_core_instance_srv01.id
  availability_domain = var.availability_domain
  objectstorage_namespace = var.objectstorage_namespace

depends_on = [
  module.compute
]

}

# module "iam" {
#   source = "./iam"
#   tenancy_ocid = var.tenancy_ocid

# depends_on = [
#   module.compute
# ]  
  
# }