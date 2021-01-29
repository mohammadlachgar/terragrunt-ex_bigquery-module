module "crTables" {
  source  = "../modules/bigquery/"
  project = var.project
  env     = var.env
  bq_staging_dataset = var.bq_staging_dataset
  bq_description = var.bq_description
  bq_location = var.bq_location
  bq_datasets_delete_data_on_destroy = var.bq_datasets_delete_data_on_destroy
  bq_creator = var.bq_creator
  bq_table_label_env     = var.bq_table_label_env
}
variable "env" {}
variable "project" {}
variable "bq_staging_dataset" {}
variable "bq_description" {}
variable "bq_location" {}

variable "bq_datasets_delete_data_on_destroy" {}
variable "bq_creator" {}
variable "bq_table_label_env" {}
