data "aws_s3_bucket" "datavid_pdfconverter" {
  bucket = "datavid-pdfconverter"
}

resource "aws_s3_bucket_object" "project_data_masked_images" {
  bucket = aws_s3_bucket.datavid_pdfconverter.id
  key    = var.key_prefix_masked_images
  acl    = "private"
}

resource "aws_s3_bucket_object" "project_data_opensearch_data" {
  bucket = aws_s3_bucket.datavid_pdfconverter.id
  key    = var.key_prefix_opensearch_data
  acl    = "private"
}

resource "aws_s3_bucket_object" "project_data_table_corners" {
  bucket = aws_s3_bucket.datavid_pdfconverter.id
  key    = var.key_prefix_table_corners
  acl    = "private"
}

resource "aws_s3_bucket_object" "project_data_bbox_images" {
  bucket = aws_s3_bucket.datavid_pdfconverter.id
  key    = var.key_prefix_bbox_images
  acl    = "private"
}
