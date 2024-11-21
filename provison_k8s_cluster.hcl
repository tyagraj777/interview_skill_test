#Validates: Multi-resource management and cloud integration.

provider "google" {
  project = "my-project-id"
  region  = "us-central1"
}

resource "google_container_cluster" "k8s_cluster" {
  name     = "example-cluster"
  location = "us-central1"
  initial_node_count = 3
}

resource "google_container_node_pool" "default_pool" {
  cluster = google_container_cluster.k8s_cluster.name
  location = google_container_cluster.k8s_cluster.location
  node_config {
    machine_type = "e2-medium"
  }
}
