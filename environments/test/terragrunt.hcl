
include {
  path = find_in_parent_folders()
}

terraform {
  source = "${path_relative_from_include()}/dry/bigquery//${path_relative_to_include()"
}

