module "test-project" {
  source          = "../../modules/project/"
  project_params  = var.databigquery-proj-params-prod
  org_id          = 678233521001                                                        // provide the org id here
  folder_id       = 625235946324 
  billing_account = "011D0C-1A8549-C0EFB4"                                                // provide the billing account id here
  activate_apis   = var.activate_apis_dev
  labels = var.prod-datawarehouse-project
}

variable "prod-datawarehouse-project" {
    description = "Project Label for Prod posfrdmdl"
    type = map(string)
    default = {"aexp-app-name" : "posfrdmdl_frdmdldpsvcs"}
}



variable "databigquery-proj-params-prod" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
  default = {
  description          = "shri"
  environment          = "p"
  business_code_number = "600001717"
  unique_id            = "1"
}
}

variable "activate_apis_dev" {
  description = "The list of apis to activate within the project"
  type        = list(string)
  default     = ["compute.googleapis.com"]
}