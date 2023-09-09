variable "name" {
  description = "A unique name for the resource, required by GCE. Changing this forces a new resource to be created."
  default     = "test01"
}

variable "environment" {
  description = "Environment for service"
  default     = "dev"
}

variable "orchestration" {
  description = "Type of orchestration"
  default     = "Terraform"
}

variable "enable_dns_managed_zone" {
  description = "Enable DNS managed zone"
  default     = "true"
}

variable "description" {
  description = "(Optional) A textual description field. Defaults to 'Managed by Terraform'."
  default     = ""
}

variable "project_id" {
  description = "(Optional) The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  default     = "formlabs-377008"
}

variable "dns_name" {
  description = "(Required) The fully qualified DNS name of this zone, e.g. terraform.io.."
  default     = "prash.cloud."
}

variable "enable_dns_record_set" {
  description = "Enable DNS record set"
  default     = "true"
}

variable "type" {
  description = "(Required) The DNS record set type (Ex: A, CNAME, MX, TXT)"
  default     = "A"
}

variable "ttl" {
  description = "(Required) The time-to-live of this record set (seconds)."
  default     = 300
}

variable "managed_zone" {
  description = "(Required) The name of the zone in which this record set will reside."
  default     = "test01-dns-mz-dev"
}

variable "rrdatas" {
  description = "(Required) The string data for the records in this record set whose meaning depends on the DNS type. For TXT record, if the string data contains spaces, add surrounding \" if you don't want your string to get split on spaces."
  default     = ["35.189.202.112"]
}

variable "names" {
  description = "A list of IP address resource names to create.  This is the GCP resource name and not the associated hostname of the IP address.  Existing resource names may be found with `gcloud compute addresses list` (e.g. [\"gusw1-dev-fooapp-fe-0001-a-001-ip\"])"
  type        = list(string)
  default = [
    "regional-external-ip-address"
  ]
}

variable "region" {
  type        = string
  description = "Name of your region"
  default = "us-central1"
}
