# s3.tf

resource "aws_s3_bucket" "documentos" {
  bucket = var.bucket_name
  force_destroy = true
  tags = {
    Project    = var.project_name
    CostCenter = var.cost_center
    Name       = "bucket-dataset"
  }
}
