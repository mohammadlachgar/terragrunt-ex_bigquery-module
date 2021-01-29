include {
  path = find_in_parent_folders()
}

terraform {
   source = "../../dry/bigquery"
}

<<<<<<< HEAD
inputs = {
 credentials = "${get_parent_terragrunt_dir()}/serviceaccount.json"
=======
locals {
  project = var.project
  env     = var.env
  bq_staging_dataset = var.bq_staging_dataset
  bq_description = var.bq_description
  bq_location = var.bq_location
  bq_datasets_delete_data_on_destroy = var.bq_datasets_delete_data_on_destroy
  bq_creator = var.bq_creator
  bq_table_label_env     = var.bq_table_label_env
}

inputs = {
  project = local.project
  env     = local.env
  bq_staging_dataset = local.bq_staging_dataset
  bq_description = local.bq_description
  bq_location = local.bq_location
  bq_datasets_delete_data_on_destroy = local.bq_datasets_delete_data_on_destroy
  bq_creator = local.bq_creator
  bq_table_label_env     = local.bq_table_label_env
>>>>>>> 333119e10141fda612d318bb7c9832d6de190c2a
}