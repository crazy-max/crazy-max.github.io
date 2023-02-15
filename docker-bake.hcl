variable "HUGO_VERSION" {
  default = null
}

variable "GO_VERSION" {
  default = null
}

target "_common" {
  args = {
    GO_VERSION = GO_VERSION
    HUGO_VERSION = HUGO_VERSION
  }
}

group "default" {
  targets = ["build"]
}

group "validate" {
  targets = ["validate-vendor"]
}

target "validate-vendor" {
  inherits = ["_common"]
  target = "vendor-validate"
  output = ["type=cacheonly"]
}

target "build" {
  inherits = ["_common"]
  dockerfile = "./Dockerfile"
  target = "build-update"
  output = ["."]
}

target "vendor" {
  inherits = ["_common"]
  target = "vendor-update"
  output = ["."]
}
