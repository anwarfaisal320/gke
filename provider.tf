# Google Cloud Platform Provider
# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "single-364416"
  region = "us-central1"
}

provider "google-beta" {
#version = "~> 3.66.0"
 project = "single-364416"
 region = "us-central1"
}
terraform {
  backend "gcs" {
    bucket = "anwar-tf-state-staging"
    prefix = "terraform/state"
  }
#   required_providers {
#     google = {
#       source  = "hashicorp/google"
#       version = "~> 3.66"
#     }
#   }
  
}
