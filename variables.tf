variable "bucket_name" {
    type    = string
    default = "datavid-pdfconverter"
}

variable "key_prefix_masked_images" {
    type    = string
    default = "project/data/masked_images/"
}

resource "key_prefix_opensearch_data" {
    type     = string 
    default = "project/data/opensearch_data/"
}

resource "key_prefix_table_corners" {
    type    = string
    default = "project/data/table_corners/"
}

resource "key_prefix_bbox_images" {
    type    = string
    default = "project/data/bbox_images/"
}
