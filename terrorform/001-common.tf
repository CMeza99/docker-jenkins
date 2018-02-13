# Configure the OpenStack Provider
provider "openstack" {}


# Define the images you want to use
# You can just reference the image by name in your instance config
# This is just an example of creating a map
variable "images" {
  type = "map"

  default = {
    ec1404 = "Ubuntu-1404-EC"
    ec1604 = "Ubuntu-1604-EC"
  }
}
