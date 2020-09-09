resource "google_project_service" "container" {
  service 				            = "container.googleapis.com"

  disable_dependent_services        = false
  disable_on_destroy 	            = false
}
 
provider "google" {
  region = "europe-west1"
  version = "~> 3.27"
  project = "nayar-devcon"
}
