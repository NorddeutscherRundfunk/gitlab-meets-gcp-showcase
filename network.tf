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

resource "google_compute_subnetwork" "test2" {
  name          = "test2"
  region        = "europe-west3"
  ip_cidr_range = "10.1.0.0/24"
  network       = google_compute_network.test.id
}

resource "google_compute_subnetwork" "test3" {
  name          = "test3"
  region        = "europe-west3"
  ip_cidr_range = "10.2.0.0/24"
  network       = google_compute_network.test.id
}
