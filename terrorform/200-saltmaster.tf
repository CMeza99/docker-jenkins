# Open SaltMaster ports
resource "openstack_compute_secgroup_v2" "secgroup_saltmaster" {
    name = "secgroup_saltmaster"
    description = "Saltmasters"
    # inbound 4505-4506
    rule {
        # from-to is the range of ports
        from_port = 4505
        to_port = 4506
        ip_protocol = "tcp"
        cidr = "0.0.0.0/0"
    }
}

# Create the instance and bootstrap salt minion
resource "openstack_compute_instance_v2" "saltmaster911_xla" {
  name        = "saltmaster911.xla"
  flavor_name = "m1.medium"
  key_pair    = "${openstack_compute_keypair_v2.combined-keypair.name}"
  image_name  = "${var.images["ec1404"]}"

  config_drive = true

  security_groups = ["default", "secgroup_saltmaster"]

  network {
    name = "XLA"
  }

  user_data = "${file("${path.module}/cloud-config-saltmaster.yml")}"

  metadata = {
    purpose = "salt-master",
    subpurposes = "default,development"
  }
}
