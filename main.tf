provider "google" {
  project = "your-project-id"
  credentials = file("path/to/your/google_credentials.json")
  region = "us-central1"
}

resource "google_compute_network" "vpc1" {
  name                    = "my-custom-network-1"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet1" {
  name          = "my-custom-subnet-1"
  ip_cidr_range = "10.0.1.0/24"
  network       = google_compute_network.vpc1.name
  region        = "us-central1"
}



#### test file to push
