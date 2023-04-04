# # Enviando arquivo para o bucket
# resource "oci_objectstorage_object" "upload" {
#   bucket = oci_objectstorage_bucket.public_bucket.id
#   namespace = var.objectstorage_namespace
#   source = "caminho"
#   object = "Terraform OCI.docx"  

# }

