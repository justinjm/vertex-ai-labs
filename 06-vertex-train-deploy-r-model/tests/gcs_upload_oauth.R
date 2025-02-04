
## set default project and bucket via environment in .Renviron 
project_id <- Sys.getenv("GCP_PROJECT_ID")
bucket <- Sys.getenv("GCS_DEFAULT_BUCKET")
email <- Sys.getenv("GARGLE_AUTH_EMAIL")

# load packages 
library(googleCloudStorageR)
library(gargle)

## Fetch token. See: https://developers.google.com/identity/protocols/oauth2/scopes
scope <- c("https://www.googleapis.com/auth/cloud-platform")
token <- token_fetch(scopes = scope,
                     email = email)

## Pass your token to gcs_auth
gcs_auth(token = token)

gcs_list_buckets(projectId = project_id)

gcs_get_bucket(bucket = bucket)

