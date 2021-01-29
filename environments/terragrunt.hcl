
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

