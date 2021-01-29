
# ========================================================================================
# GCP BIGQUERY GENERIC PROPERTIES
# ========================================================================================

project     = "burnished-case-280710"
region      = "europe-west1"
zone        = "europe-west1-b"
credentials = "./creds/serviceaccount.json"


# ========================================================================================
# GCP BIGQUERY GENERIC PROPERTIES
# ========================================================================================


  bq_location = "EU"

  bq_creator = "github-ahmed"

  bq_description = "dataset description"


# ========================================================================================
# GCP BIGQUERY DATASETS
# ========================================================================================



  bq_datasets_delete_data_on_destroy = true


# ========================================================================================
# GCP BIGQUERY TABLES
# ========================================================================================

  bq_table_label_env   = "test"
