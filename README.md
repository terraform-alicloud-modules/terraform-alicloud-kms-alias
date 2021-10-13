Terraform module which create an alias for the master key on Alibaba Cloud

terraform-alicloud-kms-alias
=====================================================================

English | [简体中文](README-CN.md)

This module is used to create an alias for the kms key under Alibaba Cloud.

These types of resources are supported:

* [alicloud_kms_alias](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/kms_alias)
* [alicloud_kms_key](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/kms_key)

## Usage

```hcl
module "kms-alias" {
  region            = "cn-shenzhen"
  source            = "terraform-alicloud-modules/kms-alias/alicloud"
  alias_name        = "alias/test_kms_alias"
  key_id            = "fc8ccca2-6d57-4273-9326-9b4563b8f84d"
}
```

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`. If you have not set them
  yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

## Submit Issues

If you have any problems when using this module, please opening
a [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend to open an issue on this repo.

## Authors

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

## License

MIT Licensed. See LICENSE for full details.

## Reference

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
