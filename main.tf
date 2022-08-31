resource "google_compute_network" "demo_vpc_network" {
  name                    = "test-vpc-atlantis"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "demovpc_subnet1" {
  name                     = "test-subnet1-us-central1-atlantis"
  ip_cidr_range            = "10.1.0.0/20"
  network                  = google_compute_network.demo_vpc_network.id
  private_ip_google_access = true
  depends_on               = [google_compute_network.demo_vpc_network]
}
