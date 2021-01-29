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


include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../dry/bigquery"
}

inputs = {
  project = var.project
  env     = var.env
  bq_staging_dataset = var.bq_staging_dataset
  bq_description = var.bq_description
  bq_location = var.bq_location
  bq_datasets_delete_data_on_destroy = var.bq_datasets_delete_data_on_destroy
  bq_creator = var.bq_creator
  bq_table_label_env     = var.bq_table_label_env
}