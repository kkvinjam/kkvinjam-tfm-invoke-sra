terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 4.20.1"
    }
    null = {
      source = "hashicorp/null"
      version = "3.2.2" 
    }
  }

}



module "my_module" {
  # source = "git::https://github.com/aws-samples/aws-security-reference-architecture-examples.git//aws_sra_examples/terraform/common?ref=v3.1.0"
  source = "./modules/aws-security-reference-architecture-examples/aws_sra_examples/terraform/common"
  # Module input variables
  control_tower = var.control_tower
  governed_regions = var.governed_regions
  security_account_id = var.security_account_id
  log_archive_account_id = var.log_archive_account_id
}
