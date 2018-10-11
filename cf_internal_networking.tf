// Allow open access between internal VMs for a PCF deployment
resource "google_compute_firewall" "cf-internal" {
  name    = "${var.env_name}-cf-internal"
  network = "${google_compute_network.pcf-network.name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
  }

  allow {
    protocol = "udp"
  }

  source_ranges = [
    "${google_compute_subnetwork.infrastructure-subnet-1.ip_cidr_range}",
    "${google_compute_subnetwork.infrastructure-subnet-2.ip_cidr_range}",
    "${google_compute_subnetwork.infrastructure-subnet-3.ip_cidr_range}",
    "${google_compute_subnetwork.pas-subnet-1.ip_cidr_range}",
    "${google_compute_subnetwork.pas-subnet-2.ip_cidr_range}",
    "${google_compute_subnetwork.pas-subnet-3.ip_cidr_range}",
    "${google_compute_subnetwork.services-subnet-1.ip_cidr_range}",
    "${google_compute_subnetwork.services-subnet-2.ip_cidr_range}",
    "${google_compute_subnetwork.services-subnet-3.ip_cidr_range}",
  ]
}
