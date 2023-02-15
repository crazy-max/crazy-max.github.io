variable "HUGO_VERSION" {
  default = null
}

variable "GO_VERSION" {
  default = null
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
