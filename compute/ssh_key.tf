resource "oci_core_instance_console_connection" "srv_console_connection" {
  instance_id = oci_core_instance.srv01.id
  public_key = file(var.ssh_public_key_path)

}

