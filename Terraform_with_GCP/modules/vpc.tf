resource "google_compute_network" "demo_vpc_network" {
  name                    = "${var.name}-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "demovpc_subnet1" {
  name                     = "${var.name}-subnet1-us-central1"
  ip_cidr_range            = var.subnet_cidr_range
  network                  = google_compute_network.demo_vpc_network.id
  private_ip_google_access = true
  depends_on               = [google_compute_network.demo_vpc_network]
}