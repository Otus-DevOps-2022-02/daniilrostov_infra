terraform {
  required_providers {
    yandex = {
      source = "terraform-registry.storage.yandexcloud.net/yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

terraform {
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    key                         = "stage-state.tfstate"
    region                      = "ru-central1"
    bucket                      = "otus-tf-state-daniil"
    skip_region_validation      = "true"
    skip_credentials_validation = "true"
    access_key                  = "YCAJEItQW-v-VqhmRmB33CBhX"
    secret_key                  = "YCMCK98eJ-bjx6DhtJVhv-SbQ5WcXXdEYezl2vge"
  }
}
