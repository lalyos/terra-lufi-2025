variable "title" {
  default = "Welcome"
}

variable "color" {
  default = "gray"
}

variable "body" {
  default = <<EOF
  <iframe src="https://giphy.com/embed/12Ge3LuCAofm2A" width="480" height="480" style="" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p><a href="https://giphy.com/gifs/happy-wednesday-12Ge3LuCAofm2A">via GIPHY</a></p>
EOF
}