output "iaas" {
  value = "gcp"
}

output "service_account_email" {
  value = "${google_service_account.opsman_service_account.email}"
}

output "pas_blobstore_gcp_service_account_key" {
  value     = "${base64decode(element(concat(google_service_account_key.blobstore_service_account_key.*.private_key, list("")), 0))}"
  sensitive = true
}

output "pas_blobstore_service_account_email" {
  value = "${element(concat(google_service_account.blobstore_service_account.*.email, list("")), 0)}"
}

output "pas_blobstore_service_account_project" {
  value = "${element(concat(google_service_account.blobstore_service_account.*.project, list("")), 0)}"
}

output "optional_ops_manager_dns" {
  value = "${replace(element(concat(google_dns_record_set.optional-ops-manager-dns.*.name, list("")), 0), "/\\.$/", "")}"
} 

output "ops_manager_public_ip" {
  value = "${google_compute_address.ops-manager-ip.address}"
}

output "ops_manager_ip" {
  value = "${google_compute_address.ops-manager-ip.address}"
}

output "optional_ops_manager_public_ip" {
  value = "${element(concat(google_compute_address.optional-ops-manager-ip.*.address, list("")), 0)}"
}

output "project" {
  value = "${var.project}"
}

output "region" {
  value = "${var.region}"
}

output "azs" {
  value = "${var.zones}"
}

output "vm_tag" {
  value = "${var.env_name}-vms"
}

output "network_name" {
  value = "${google_compute_network.pcf-network.name}"
}

output "infrastructure_subnet_1_gateway" {
  value = "${google_compute_subnetwork.infrastructure-subnet-1.gateway_address}"
}

output "infrastructure_subnet_1_cidrs" {
  value = ["${google_compute_subnetwork.infrastructure-subnet-1.ip_cidr_range}"]
}

output "infrastructure_subnet_1_name" {
  value = "${google_compute_subnetwork.infrastructure-subnet-1.name}"
}

output "infrastructure_subnet_1" {
  value = ["${google_compute_subnetwork.infrastructure-subnet-1.name}"]
}

output "infrastructure_subnet_2_gateway" {
  value = "${google_compute_subnetwork.infrastructure-subnet-2.gateway_address}"
}

output "infrastructure_subnet_2_cidrs" {
  value = ["${google_compute_subnetwork.infrastructure-subnet-2.ip_cidr_range}"]
}

output "infrastructure_subnet_2_name" {
  value = "${google_compute_subnetwork.infrastructure-subnet-2.name}"
}

output "infrastructure_subnet_2" {
  value = ["${google_compute_subnetwork.infrastructure-subnet-2.name}"]
}

output "infrastructure_subnet_3_gateway" {
  value = "${google_compute_subnetwork.infrastructure-subnet-3.gateway_address}"
}

output "infrastructure_subnet_3_cidrs" {
  value = ["${google_compute_subnetwork.infrastructure-subnet-3.ip_cidr_range}"]
}

output "infrastructure_subnet_3_name" {
  value = "${google_compute_subnetwork.infrastructure-subnet-3.name}"
}

output "infrastructure_subnet_3" {
  value = ["${google_compute_subnetwork.infrastructure-subnet-3.name}"]
}

output "pas_subnet_1_gateway" {
  value = "${google_compute_subnetwork.pas-subnet-1.gateway_address}"
}

output "pas_subnet_1_cidrs" {
  value = ["${google_compute_subnetwork.pas-subnet-1.ip_cidr_range}"]
}

output "pas_subnet_1_name" {
  value = "${google_compute_subnetwork.pas-subnet-1.name}"
}

output "pas_subnet_1" {
  value = ["${google_compute_subnetwork.pas-subnet-1.name}"]
}

output "pas_subnet_2_gateway" {
  value = "${google_compute_subnetwork.pas-subnet-2.gateway_address}"
}

output "pas_subnet_2_cidrs" {
  value = ["${google_compute_subnetwork.pas-subnet-2.ip_cidr_range}"]
}

output "pas_subnet_2_name" {
  value = "${google_compute_subnetwork.pas-subnet-2.name}"
}

output "pas_subnet_2" {
  value = ["${google_compute_subnetwork.pas-subnet-2.name}"]
}

output "pas_subnet_3_gateway" {
  value = "${google_compute_subnetwork.pas-subnet-3.gateway_address}"
}

output "pas_subnet_3_cidrs" {
  value = ["${google_compute_subnetwork.pas-subnet-3.ip_cidr_range}"]
}

output "pas_subnet_3_name" {
  value = "${google_compute_subnetwork.pas-subnet-3.name}"
}

output "pas_subnet_3" {
  value = ["${google_compute_subnetwork.pas-subnet-3.name}"]
}

output "services_subnet_1_gateway" {
  value = "${google_compute_subnetwork.services-subnet-1.gateway_address}"
}

output "services_subnet_1_cidrs" {
  value = ["${google_compute_subnetwork.services-subnet-1.ip_cidr_range}"]
}

output "services_subnet_1_name" {
  value = "${google_compute_subnetwork.services-subnet-1.name}"
}

output "services_subnet_1" {
  value = ["${google_compute_subnetwork.services-subnet-1.name}"]
}

output "services_subnet_2_gateway" {
  value = "${google_compute_subnetwork.services-subnet-2.gateway_address}"
}

output "services_subnet_2_cidrs" {
  value = ["${google_compute_subnetwork.services-subnet-2.ip_cidr_range}"]
}

output "services_subnet_2_name" {
  value = "${google_compute_subnetwork.services-subnet-2.name}"
}

output "services_subnet_2" {
  value = ["${google_compute_subnetwork.services-subnet-2.name}"]
}

output "services_subnet_3_gateway" {
  value = "${google_compute_subnetwork.services-subnet-3.gateway_address}"
}

output "services_subnet_3_cidrs" {
  value = ["${google_compute_subnetwork.services-subnet-3.ip_cidr_range}"]
}

output "services_subnet_3_name" {
  value = "${google_compute_subnetwork.services-subnet-3.name}"
}

output "services_subnet_3" {
  value = ["${google_compute_subnetwork.services-subnet-3.name}"]
}

output "ssl_cert" {
  sensitive = true
  value     = "${length(var.ssl_ca_cert) > 0 ? element(concat(tls_locally_signed_cert.ssl_cert.*.cert_pem, list("")), 0) : var.ssl_cert}"
}

output "ssl_private_key" {
  sensitive = true
  value     = "${length(var.ssl_ca_cert) > 0 ? element(concat(tls_private_key.ssl_private_key.*.private_key_pem, list("")), 0) : var.ssl_private_key}"
}

output "ssh_lb_name" {
  value = "${google_compute_target_pool.cf-ssh.name}"
}

output "ssh_router_pool" {
  value = "${google_compute_target_pool.cf-ssh.name}"
}


output "buildpacks_bucket" {
  value = "${element(concat(google_storage_bucket.buildpacks.*.name, list("")), 0)}"
}

output "droplets_bucket" {
  value = "${element(concat(google_storage_bucket.droplets.*.name, list("")), 0)}"
}

output "packages_bucket" {
  value = "${element(concat(google_storage_bucket.packages.*.name, list("")), 0)}"
}

output "resources_bucket" {
  value = "${element(concat(google_storage_bucket.resources.*.name, list("")), 0)}"
}

output "director_blobstore_bucket" {
  value = "${element(concat(google_storage_bucket.director.*.name, list("")), 0)}"
}

output "ops_manager_ssh_private_key" {
  sensitive = true
  value     = "${tls_private_key.ops-manager.private_key_pem}"
}

output "ops_manager_ssh_public_key" {
  sensitive = true
  value     = "${format("ubuntu:%s", tls_private_key.ops-manager.public_key_openssh)}"
}

output "ops_manager_private_ip" {
  value = "${google_compute_instance.ops-manager.network_interface.0.address}"
}
