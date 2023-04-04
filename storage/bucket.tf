#Bucket Publico
resource "oci_objectstorage_bucket" "public_bucket" {
  compartment_id = var.oci_identity_compartment_storage
  name = "gustavo-bucket"
  namespace = var.objectstorage_namespace
  storage_tier = "Standard"
  access_type = "ObjectReadWithoutList"
}

#Bucket Privado
resource "oci_objectstorage_bucket" "terraform_bucket" {
  compartment_id = var.oci_identity_compartment_storage
  name = "terraform_bucket"
  namespace = var.objectstorage_namespace
  storage_tier = "Standard"
  access_type = "NoPublicAccess"
}