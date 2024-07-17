provider "google" {
  project     = "jenkins-project-423708"
  #credentials = file("jenkins-project-423708.json")
  region      = "us-central1-c"

}

resource "google_compute_network" "vpc1" {
  name                    = "my-custom-network-1"
  auto_create_subnetworks = "false"

}

resource "google_compute_subnetwork" "my-custom-subnet1" {
  name          = "my-custom-subnet-1"
  ip_cidr_range = "10.255.196.0/24"
  network       = google_compute_network.vpc1.name
  region        = "us-central1-c"
}



#### test file to push
