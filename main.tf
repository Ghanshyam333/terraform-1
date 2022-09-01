terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }

}
 
provider "google" {
  credentials = file("C:\Users\doyenltp5050\Downloads\sonic-stratum-361012-5f39ed4a5227.json")

  project = "sonic-stratum-361012"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

