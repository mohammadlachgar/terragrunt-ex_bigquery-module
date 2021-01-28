
  terraform {
    extra_arguments "parent-configs" {
      arguments = [
        "-var-file=${get_terragrunt_dir()}/terraform.tfvars",
        "-var-file=${get_parent_terragrunt_dir()}/terraform.tfvars"
      ]
      commands = [
        "apply",
        "plan",
        "import",
        "push",
        "refresh"
      ]
    }
  }



remote_state {
  backend = "gcs"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket = "project_id-tfstate"
    prefix = path_relative_to_include()
  }
}


generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "google" {
  credentials = file(var.credentials)
  project     = var.project
  region      = var.region
  zone        = var.zone
}
EOF
}


generate "callmodules" {
  path = "callmodules.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
module "crTables" {
  source  = "../../modules/crTables/"
  project = var.project
  env     = var.env
  bq_staging_dataset = var.bq_staging_dataset
  bq_description = var.bq_description
  bq_location = var.bq_location
  bq_datasets_delete_data_on_destroy = var.bq_datasets_delete_data_on_destroy
  bq_creator = var.bq_creator
  bq_table_label_env     = var.bq_table_label_env
}
EOF
}


generate "variables" {
  path = "variables.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
variable "project" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "credentials" {
  type = string
}

variable "env" {
  type = string
}

# ========================================================================================
# GCP BIGQUERY GENERIC PROPERTIES
# ========================================================================================

variable "bq_location" {
  type    = string
}

variable "bq_creator" {
  type    = string
}


variable "bq_description" {
  type    = string
}



# ========================================================================================
# GCP BIGQUERY DATASETS
# ========================================================================================


variable "bq_staging_dataset" {
  type    = string
}

variable "bq_datasets_delete_data_on_destroy" {
  type    = bool
}



# ========================================================================================
# GCP BIGQUERY TABLES
# ========================================================================================


variable "bq_table_label_env" {
  type    = string
}
EOF
}