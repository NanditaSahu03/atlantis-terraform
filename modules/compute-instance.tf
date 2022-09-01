
resource "google_compute_instance" "demo_compute_instance" {
  name         = "${var.name}-instance"
  machine_type = "n1-standard-2"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts" #project/family
    }
  }

  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network    = google_compute_network.demo_vpc_network.name
    subnetwork = google_compute_subnetwork.demovpc_subnet1.name
  }

  metadata_startup_script = file("script.sh")

  depends_on = [google_compute_network.demo_vpc_network, google_compute_subnetwork.demovpc_subnet1]
}