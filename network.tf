resource "google_compute_network" "test" {
  name                    = "test"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "test" {
  name          = "test"
  region        = "europe-west3"
  ip_cidr_range = "10.0.0.0/24"
  network       = google_compute_network.test.id
}
