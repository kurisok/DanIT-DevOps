terraform {
  backend "s3" {
    bucket         = "terraform-state-danit-devops-7"
    # Example
    #key            = "eks/terraform.tfstate"
    key            = "g3/artem/eks.tfstate"
    encrypt        = true
    # Example
    dynamodb_table = "for-last-project-artem" # изменил
    #dynamodb_table = 
    # dynamo key LockID
    # Params tekan from -backend-config when terraform init
    region = "eu-central-1"
    profile = "mfa"
  }
}

