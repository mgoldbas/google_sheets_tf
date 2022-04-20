variable "ingestion_dataset_name" {
  description = "The ingestion dataset name that you want the google sheet mounted in"
  type        = string
}

variable "google_sheet_uri" {
  description = "The URL of the google sheet"
  type        = string
}