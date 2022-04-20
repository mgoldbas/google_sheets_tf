locals {
  dataset_id = replace("${var.ingestion_dataset_name}_${module.workload_context.env}_ingestion", "-", "_")
}


resource "google_bigquery_table" "sheet" {
  dataset_id = local.dataset_id
  table_id   = "sheet"
  project    = "<project id>"

  external_data_configuration {
    autodetect    = true
    source_format = "GOOGLE_SHEETS"

    google_sheets_options {
      skip_leading_rows = 1
    }

    source_uris = [
      var.google_sheet_uri,
    ]
  }
}