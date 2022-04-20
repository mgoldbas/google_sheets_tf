module "school_partnership_drive" {
  source                 = "../../../../modules/business-intelligence/google_sheets"
  google_sheet_uri       = "https://docs.google.com/spreadsheets/d/17eFdgJZjIb3OpcsaSQWUBfiWyCtd9_E9ezpSvzP-yMw/edit#gid=567362923"
  ingestion_dataset_name = "salesforce"
}