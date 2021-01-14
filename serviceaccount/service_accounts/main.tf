module "service_accounts" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "3.0.1"
  project_id    = "ambient-highway-298211"
  prefix        = "test-sa"
  names         = ["first", "second"]
  project_roles = [
    "roles/container.admin",
    "roles/container.clusterAdmin",
    "roles/container.clusterViewer"
  ]
}
