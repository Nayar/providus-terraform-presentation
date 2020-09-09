resource "google_sql_database_instance" "master" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "europe-west1"

  settings {
    tier = "db-f1-micro"
    availability_type = "REGIONAL"
    
    #ip_configuration {
        #authorized_networks {
        #    value = "0.0.0.0/0" # <<<< Dangerous
        #}
    #}
  }
} 

resource "google_sql_user" "devconapp" {
  name     = "devconapp"
  instance = google_sql_database_instance.master.name
  password = "Bp9TJ5L7mkkEgH9N"
}
