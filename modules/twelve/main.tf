resource "docker_image" "nginx" {
  name = "lalyos/12factor"
}

resource "docker_container" "web" {
  image = docker_image.nginx.image_id
  name  = random_pet.cat.id
  ports {
    internal = 80
  }
  env = [
    "TITLE=${var.title}",
    "COLOR=${var.color}"
  ]
}

resource "random_pet" "cat" {
  prefix = "web"
  length = 2
}