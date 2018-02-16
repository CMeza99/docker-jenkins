# Create the instance and bootstrap salt minion
resource "openstack_compute_instance_v2" "sici901_xla" {
  name        = "sici901.xla"
  flavor_name = "m1.medium"
  key_pair    = "${openstack_compute_keypair_v2.combined-keypair.name}"
  image_name  = "${var.images["ec1604"]}"

  config_drive = true

  security_groups = ["jenkins"]

  network {
    name = "XLA"
  }

  user_data = "${file("${path.module}/cloud-config-sici_901.yml")}"

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

  security_groups = ["jenkins"]

  network {
    name = "XLA"
  }

  user_data = "${file("${path.module}/cloud-config-sici_902.yml")}"

  metadata = {
    purpose = "spare",
    subpurposes = "default"
  }
}

# Open Jenkins ports
resource "openstack_compute_secgroup_v2" "secgroup_jenkins" {
    name = "jenkins"
    description = "Jenkins"
    # ssh
    rule {
        from_port = 22
        to_port = 22
        ip_protocol = "tcp"
        cidr = "0.0.0.0/0"
    }
    # Web Interface
    rule {
        from_port = 80
        to_port = 80
        ip_protocol = "tcp"
        cidr = "0.0.0.0/0"
    }
    rule {
        from_port = 443
        to_port = 443
        ip_protocol = "tcp"
        cidr = "0.0.0.0/0"
    }
    # JNLP
    rule {
        from_port = 50000
        to_port = 50000
        ip_protocol = "tcp"
        cidr = "0.0.0.0/0"
    }
}

