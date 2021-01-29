
include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../dry//bigquery//crTables"
}

inputs = {
credentials = "${get_terragrunt_dir()}/serviceaccount.json"
}