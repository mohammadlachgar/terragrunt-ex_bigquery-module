include {
  path = find_in_parent_folders()
}

terraform {
   source = "../../dry/bigquery"
}

inputs = {
 credentials = "${get_parent_terragrunt_dir()}/serviceaccount.json"
}