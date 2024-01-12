/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

# output "storage_bucket_name" {
#   description = "Name of storage bucket created"
#   value       = google_storage_bucket.bucket.name
# }

output "cloudbuild_trigger_id" {
  description = "Id of Cloud Build Trigger"
  value       = google_cloudbuild_trigger.zip_files.id
}

output "composer_env_name" {
  value       = google_composer_environment.cluster.name
  description = "Name of the Cloud Composer Environment."
}

output "composer_env_id" {
  value       = google_composer_environment.cluster.id
  description = "ID of Cloud Composer Environment."
}

output "gke_cluster" {
  value       = google_composer_environment.cluster.config.0.gke_cluster
  description = "Google Kubernetes Engine cluster used to run the Cloud Composer Environment."
}

output "gcs_bucket" {
  value       = google_composer_environment.cluster.config.0.dag_gcs_prefix
  description = "Google Cloud Storage bucket which hosts DAGs for the Cloud Composer Environment."
}

output "airflow_uri" {
  value       = google_composer_environment.cluster.config.0.airflow_uri
  description = "URI of the Apache Airflow Web UI hosted within the Cloud Composer Environment."
}