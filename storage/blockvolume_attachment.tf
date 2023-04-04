resource "oci_core_volume_attachment" "block_volume_attachment" {
  instance_id = var.oci_core_instance_srv01
  volume_id = oci_core_volume.block_volume.id
  attachment_type = "iscsi"
  is_read_only = false
  display_name = "BV_srv01"

  depends_on = [
    oci_core_volume.block_volume
  ]
}