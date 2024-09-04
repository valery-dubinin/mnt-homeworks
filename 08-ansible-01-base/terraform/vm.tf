variable "each_vm" {
  type = map(object({  
    vm_name=string,
    cpu=number,
    ram=number,
    core_fraction=number,
    disk_volume=number
  }))
  default = {
    "main" = {
          vm_name = "main",
          cpu= 2,
          ram= 2,
          core_fraction= 5,
          disk_volume= 10
    },
    "replica" = {
          vm_name = "replica",
          cpu= 2,
          ram= 1,
          core_fraction= 5,
          disk_volume= 10
    }
  }  
}

resource "yandex_compute_instance" "foreach_instance" {
  for_each = var.each_vm
    
        zone        = "ru-central1-a"
        name        = each.value.vm_name
        hostname    = each.value.vm_name
        platform_id = "standard-v2"
    
        resources {
            cores  = each.value.cpu
            memory = each.value.ram
            core_fraction = each.value.core_fraction
        }

        boot_disk {
            initialize_params {
            size = each.value.disk_volume
            image_id = data.yandex_compute_image.ubuntu20.id
            type = "network-hdd"
            }
        }

        scheduling_policy {
            preemptible = true
        }

        network_interface {
            subnet_id = yandex_vpc_subnet.develop.id
            nat       = true
        }

        metadata = {
            user-data = "${file("meta.yml")}"
            serial-port-enable = 1
        }
    
}