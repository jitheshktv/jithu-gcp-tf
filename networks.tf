resource "google_compute_network" "pcf-network" {
  name                    = "${var.env_name}-pcf-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "infrastructure-subnet-1" {
  name                     = "${var.env_name}-infrastructure-subnet-1"
  ip_cidr_range            = "${var.infrastructure_cidr_1}"
  network                  = "${google_compute_network.pcf-network.self_link}"
  region                   = "${var.region}"
  private_ip_google_access = "${var.internetless}"
}

resource "google_compute_subnetwork" "infrastructure-subnet-2" {
  name                     = "${var.env_name}-infrastructure-subnet-2"
  ip_cidr_range            = "${var.infrastructure_cidr_2}"
  network                  = "${google_compute_network.pcf-network.self_link}"
  region                   = "${var.region}"
  private_ip_google_access = "${var.internetless}"
}

resource "google_compute_subnetwork" "infrastructure-subnet-3" {
  name                     = "${var.env_name}-infrastructure-subnet-3"
  ip_cidr_range            = "${var.infrastructure_cidr_3}"
  network                  = "${google_compute_network.pcf-network.self_link}"
  region                   = "${var.region}"
  private_ip_google_access = "${var.internetless}"
}

resource "google_compute_subnetwork" "pas-subnet-1" {
  name          = "${var.env_name}-pas-subnet-1"
  ip_cidr_range = "${var.pas_cidr_1}"
  network       = "${google_compute_network.pcf-network.self_link}"
  region        = "${var.region}"
}

resource "google_compute_subnetwork" "pas-subnet-2" {
  name          = "${var.env_name}-pas-subnet-2"
  ip_cidr_range = "${var.pas_cidr_2}"
  network       = "${google_compute_network.pcf-network.self_link}"
  region        = "${var.region}"
}

resource "google_compute_subnetwork" "pas-subnet-3" {
  name          = "${var.env_name}-pas-subnet-3"
  ip_cidr_range = "${var.pas_cidr_3}"
  network       = "${google_compute_network.pcf-network.self_link}"
  region        = "${var.region}"
}

resource "google_compute_subnetwork" "services-subnet-1" {
  name          = "${var.env_name}-services-subnet-1"
  ip_cidr_range = "${var.services_cidr_1}"
  network       = "${google_compute_network.pcf-network.self_link}"
  region        = "${var.region}"
}

resource "google_compute_subnetwork" "services-subnet-2" {
  name          = "${var.env_name}-services-subnet-2"
  ip_cidr_range = "${var.services_cidr_2}"
  network       = "${google_compute_network.pcf-network.self_link}"
  region        = "${var.region}"
}

resource "google_compute_subnetwork" "services-subnet-3" {
  name          = "${var.env_name}-services-subnet-3"
  ip_cidr_range = "${var.services_cidr_3}"
  network       = "${google_compute_network.pcf-network.self_link}"
  region        = "${var.region}"
}
