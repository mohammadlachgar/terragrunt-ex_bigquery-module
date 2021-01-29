module "crTables" {
<<<<<<< HEAD
  source  = "/../../modules/crTables"
=======
  source  = "../../modules/bigquery/"
>>>>>>> 333119e10141fda612d318bb7c9832d6de190c2a
  project = var.project
  env     = var.env
  bq_staging_dataset = var.bq_staging_dataset
  bq_description = var.bq_description
  bq_location = var.bq_location
  bq_datasets_delete_data_on_destroy = var.bq_datasets_delete_data_on_destroy
  bq_creator = var.bq_creator
  bq_table_label_env     = var.bq_table_label_env
}
<<<<<<< HEAD

=======
variable "env" {}
variable "project" {}
variable "bq_staging_dataset" {}
variable "bq_description" {}
variable "bq_location" {}

variable "bq_datasets_delete_data_on_destroy" {}
variable "bq_creator" {}
variable "bq_table_label_env" {}
>>>>>>> 333119e10141fda612d318bb7c9832d6de190c2a
