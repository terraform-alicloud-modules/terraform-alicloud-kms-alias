output "this_kms_id" {
  value = alicloud_kms_alias.default.id
}

output "this_kms_name" {
  value = alicloud_kms_alias.default.alias_name
}
