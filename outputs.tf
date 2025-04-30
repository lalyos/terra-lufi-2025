
output "url" {
  value = "http://127.0.0.1:${docker_container.web.ports[0].external}"
}