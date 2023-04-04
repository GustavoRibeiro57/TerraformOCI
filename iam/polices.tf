resource "oci_identity_policy" "policy_bucket" {
  compartment_id = var.tenancy_ocid
  name         = "PolicyBucket"
  description  = "Politica de permissao ao bucket"
  statements   = [
    "allow group Administrators to manage object-family in tenancy",
  ]
}