
include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../dry//bigquery//crTables"
}

inputs = {
  instance_count = 3
  instance_type  = "t2.micro"
}