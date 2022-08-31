resource "google_compute_router" "router" {
  name    = "${var.name}-router"
  region  = google_compute_subnetwork.demovpc_subnet1.region
  network = google_compute_network.demo_vpc_network.id

  bgp {
    asn = 64514
  }
  depends_on = [google_compute_network.demo_vpc_network, google_compute_subnetwork.demovpc_subnet1]
}

resource "google_compute_router_nat" "nat" {
  name                               = "${var.name}-router-nat"
  router                             = google_compute_router.router.name
  region                             = google_compute_router.router.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }

  depends_on = [google_compute_router.router]
}