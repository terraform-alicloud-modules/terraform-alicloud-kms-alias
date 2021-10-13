resource "alicloud_kms_alias" "default" {
  alias_name = var.name
  key_id     = var.key_id
}
