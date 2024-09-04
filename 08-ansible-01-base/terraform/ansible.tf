resource "local_file" "hosts_templatefile" {
  content = templatefile("${path.module}/hosts.tftpl",

  { databases = yandex_compute_instance.foreach_instance
  })

  #filename = "${abspath(path.module)}/hosts.ini"
  filename = "${abspath(path.module)}/../ansible/inventory/hosts.ini"
}