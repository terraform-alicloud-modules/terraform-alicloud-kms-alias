Terraform module which create an alias for the master key on Alibaba Cloud

terraform-alicloud-kms-alias
=====================================================================

[English](README.md) | 简体中文

本 Module 用于在阿里云为指定的 kms 生成别名。

本 Module 支持创建以下资源:

* [alicloud_kms_alias](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/kms_alias)
* [alicloud_kms_key](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/kms_key)

## 用法

```hcl
module "kms-alias" {
  region            = "cn-shenzhen"
  source            = "terraform-alicloud-modules/kms-alias/alicloud"
  alias_name        = "alias/test_kms_alias"
  key_id            = "fc8ccca2-6d57-4273-9326-9b4563b8f84d"
}
```

## 注意事项

* 本 Module 使用的 AccessKey 和 SecretKey 可以直接从 `profile` 和 `shared_credentials_file`
  中获取。如果未设置，可通过下载安装 [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) 后进行配置.

## 提交问题

如果在使用该 Terraform Module
的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

**注意:** 不建议在该 Module 仓库中直接提交 Issue。

## 作者

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

## 许可

MIT Licensed. See LICENSE for full details.

## 参考

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
