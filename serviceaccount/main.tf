
provider "google" {
  project = var.project_id 
  region  = "us-central1"
  zone    = "us-central1-c"
}


module "service_accounts" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "3.0.1"
  project_id    = var.project_id
  prefix        = "test-sa"
  names         = ["unique-sa"]
  project_roles = [
    "${var.project_id}=>roles/container.admin",
    "${var.project_id}=>roles/container.clusterAdmin",
    "${var.project_id}=>roles/container.clusterViewer"
  ]
}
