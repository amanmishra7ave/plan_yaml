
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.46.0"
    }
  }

  backend "gcs" {
    bucket="in_nit"
    prefix="terraform/state"
    
    labels={
        "env"="dev"
    }
  }
}

provider "google" {
project ="pure-ivy-371806"
}


resource "google_storage_bucket" "auto_expire23" {
  name          = "aman_in_devfest"
  location      = "EU"
  force_destroy = true

}

resource "google_storage_bucket" "auto_expire12" {
  name          = "aman_in_devfest_nit"
  location      = "EU"
  force_destroy = true

}

resource "google_storage_bucket" "auto_expire13" {
  name          = "ola_true"
  location      = "EU"
  force_destroy = true
  labels = {
    "env"="dev"
    "project"="demo"
  }

}