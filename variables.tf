variable "bucket_name" {
    type    = string
    default = "datavid-pdfconverter"
}

variable "key_prefix_masked_images" {
  bucket = aws_s3_bucket.datavid_pdfconverter.id
  key    = "project/data/masked_images/"
  acl    = "private"
}

resource "key_prefix_opensearch_data" {
  bucket = aws_s3_bucket.datavid_pdfconverter.id
  key    = "project/data/opensearch_data/"
  acl    = "private"
}

resource "key_prefix_table_corners" {
  bucket = aws_s3_bucket.datavid_pdfconverter.id
  key    = "project/data/table_corners/"
  acl    = "private"
}

resource "key_prefix_bbox_images" {
  bucket = aws_s3_bucket.datavid_pdfconverter.id
  key    = "project/data/bbox_images/"
  acl    = "private"
}
