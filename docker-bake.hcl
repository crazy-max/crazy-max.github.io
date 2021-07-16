variable "HUGO_VERSION" {
  default = "0.83.1"
}

variable "GO_VERSION" {
  default = "1.16"
}

group "default" {
  targets = ["build"]
}

target "build" {
  args = {
    GO_VERSION = GO_VERSION
    HUGO_VERSION = HUGO_VERSION
  }
  dockerfile = "./Dockerfile"
  target = "build-update"
  output = ["."]
}
