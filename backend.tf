terraform {
  backend "s3" {
    bucket         = "terraform-state-pls-accept"
    key            = "eks/terraform.tfstate"
    encrypt        = true
    dynamodb_table = "lock-tf-eks"
    # dynamo key LockID
    # Params tekan from -backend-config when terraform init
    #region = 
    #profile = 
  }
}


