# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.



module "prod_vpc" {
  source  = "terraform-google-modules/network/google//modules/vpc"
  version = "3.4.0"
  network_name                           = "gcp-prod-e3-vpc1"
  routing_mode                           = var.routing_mode
  project_id                             = "amex-network-prod"
  description                            = "Prod Shared VPC1"
  shared_vpc_host                        = false
  auto_create_subnetworks                = false
  delete_default_internet_gateway_routes = false
 }
module "nonprod_vpc-engg" {
  source  = "terraform-google-modules/network/google//modules/vpc"
  version = "3.4.0"
  network_name                           = "gcp-engg-e0-vpc1"
  routing_mode                           = var.routing_mode
  project_id                             = "amex-network-nonprod"
  description                            = "Lab(Engg) Shared VPC1"
  shared_vpc_host                        = false
  auto_create_subnetworks                = false
  delete_default_internet_gateway_routes = false
 }
 module "nonprod_vpc-dev" {
  source  = "terraform-google-modules/network/google//modules/vpc"
  version = "3.4.0"
  network_name                           = "gcp-dev-e1-vpc1"
  routing_mode                           = var.routing_mode
  project_id                             = "amex-network-nonprod"
  description                            = "Dev Shared VPC1"
  shared_vpc_host                        = false
  auto_create_subnetworks                = false
  delete_default_internet_gateway_routes = false
 }
module "nonprod_vpc-test" {
  source  = "terraform-google-modules/network/google//modules/vpc"
  version = "3.4.0"
  network_name                           = "gcp-test-e2-vpc1"
  routing_mode                           = var.routing_mode
  project_id                             = "amex-network-nonprod"
  description                            = "Test Shared VPC1"
  shared_vpc_host                        = false
  auto_create_subnetworks                = false
  delete_default_internet_gateway_routes = false
 }
module "data-anonymize_vpc" {
  source  = "terraform-google-modules/network/google//modules/vpc"
  version = "3.4.0"
  network_name                           = "gcp-data-anonymize-vpc1"
  routing_mode                           = var.routing_mode
  project_id                             = "amex-data-anonymize"
  description                            = "Anonymized Data Pipeline Shared VPC1"
  shared_vpc_host                        = false
  auto_create_subnetworks                = false
  delete_default_internet_gateway_routes = false
 }
 module "shared-services_vpc" {
  source  = "terraform-google-modules/network/google//modules/vpc"
  version = "3.4.0"
  network_name                           = "gcp-shared-services-vpc1"
  routing_mode                           = var.routing_mode
  project_id                             = "amex-shared-services"
  description                            = "Shared Services Shared VPC1"
  shared_vpc_host                        = false
  auto_create_subnetworks                = false
  delete_default_internet_gateway_routes = false
 }


