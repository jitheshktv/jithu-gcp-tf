/**********
 * PAS LB *
 **********/

resource "google_compute_firewall" "cf-public" {
  name    = "${var.env_name}-cf-public"
  network = "${google_compute_network.pcf-network.name}"

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  target_tags = [
    "${var.env_name}-tcplb",
  ]
}

resource "google_compute_address" "cf" {
  name          = "${var.env_name}-cf"
  address_type  = "INTERNAL"

  count         = "${var.global_lb > 0 ? 0 : 1}"
}

resource "google_compute_http_health_check" "cf-public" {
  name                = "${var.env_name}-cf-public"
  port                = 8080
  request_path        = "/health"
  check_interval_sec  = 5
  timeout_sec         = 3
  healthy_threshold   = 6
  unhealthy_threshold = 3
}

resource "google_compute_firewall" "cf-health_check" {
  name    = "${var.env_name}-cf-health-check"
  network = "${google_compute_network.pcf-network.name}"

  allow {
    protocol = "tcp"
    ports    = ["8080"]
  }

  source_ranges = ["130.211.0.0/22", "35.191.0.0/16"]
  target_tags   = [
    "${var.env_name}-tcplb",
  ]
}

resource "google_compute_target_pool" "cf" {
  name = "${var.env_name}-tcplb"

  health_checks = [
    "${google_compute_http_health_check.cf-public.name}",
  ]

  count = "${var.global_lb > 0 ? 0 : 1}"
}

resource "google_compute_forwarding_rule" "cf-http" {
  name       = "${var.env_name}-cf-lb-http"
  ip_address = "${google_compute_address.cf.address}"
  target     = "${google_compute_target_pool.cf.self_link}"
  port_range = "80"
  ip_protocol = "TCP"

  count = "${var.global_lb > 0 ? 0 : 1}"
}

resource "google_compute_forwarding_rule" "cf-https" {
  name       = "${var.env_name}-cf-lb-https"
  ip_address = "${google_compute_address.cf.address}"
  target     = "${google_compute_target_pool.cf.self_link}"
  port_range = "443"
  ip_protocol = "TCP"

  count = "${var.global_lb > 0 ? 0 : 1}"
}

/****************
 * Diego SSH LB *
 ****************/

resource "google_compute_firewall" "cf-ssh" {
  name    = "${var.env_name}-cf-ssh"
  network = "${google_compute_network.pcf-network.name}"

  allow {
    protocol = "tcp"
    ports    = ["2222"]
  }

  target_tags = ["${var.env_name}-cf-ssh"]
}

resource "google_compute_address" "cf-ssh" {
  name          = "${var.env_name}-cf-ssh"
  address_type  = "INTERNAL"
}

resource "google_compute_target_pool" "cf-ssh" {
  name = "${var.env_name}-cf-ssh"
}

resource "google_compute_forwarding_rule" "cf-ssh" {
  name        = "${var.env_name}-cf-ssh"
  target      = "${google_compute_target_pool.cf-ssh.self_link}"
  port_range  = "2222"
  ip_protocol = "TCP"
  ip_address  = "${google_compute_address.cf-ssh.address}"
}
