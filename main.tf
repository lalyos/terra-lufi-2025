resource "docker_image" "nginx" {
  name = "lalyos/12factor"
}

resource "docker_container" "web" {
  image = docker_image.nginx.image_id
  name  = "web"
  ports {
    internal = 80
    external = 8080
  }
  env = [
    "TITLE=${var.title}",
    "COLOR=${var.color}"
  ]
}

resource "random_pet" "cat" {
  prefix = "first"
  length = 3
}