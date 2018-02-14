# Create the instance and bootstrap salt minion
resource "openstack_compute_instance_v2" "sici901_xla" {
  name        = "sici901.xla"
  flavor_name = "m1.medium"
  key_pair    = "${openstack_compute_keypair_v2.combined-keypair.name}"
  image_name  = "${var.images["ec1604"]}"

  config_drive = true

  security_groups = ["default"]

  network {
    name = "XLA"
  }

  user_data = "${file("${path.module}/cloud-config-sici.yml")}"

  metadata = {
    purpose = "spare",
    subpurposes = "default"
  }
}

resource "openstack_compute_instance_v2" "sici902_xla" {
  name        = "sici902.xla"
  flavor_name = "m1.medium"
  key_pair    = "${openstack_compute_keypair_v2.combined-keypair.name}"
  image_name  = "${var.images["ec1404"]}"

  config_drive = true

  security_groups = ["default"]

  network {
    name = "XLA"
  }

  user_data = "${file("${path.module}/cloud-config-sici.yml")}"

  metadata = {
    purpose = "spare",
    subpurposes = "default"
  }
}
