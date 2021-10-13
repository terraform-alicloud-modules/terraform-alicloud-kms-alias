variable "region" {
  default = "cn-shenzhen"
}

variable "profile" {
  default = "default"
}

variable "name" {
  default = "terraform_test"
}

provider "alicloud" {
  region  = var.region
  profile = var.profile
}

resource "alicloud_kms_key" "default" {
  description            = "Hello KMS"
  pending_window_in_days = "7"
  status                 = "Enabled"
  key_usage              = "ENCRYPT/DECRYPT"
  origin                 = "Aliyun_KMS"
  rotation_interval      = 300
}

module "example" {
  source = "../"
  name   = var.name
  key_id = alicloud_kms_key.default.id
}
