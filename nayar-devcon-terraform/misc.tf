resource "google_project_service" "container" {
  service 				            = "container.googleapis.com"

  disable_dependent_services        = false
  disable_on_destroy 	            = false
}
 
