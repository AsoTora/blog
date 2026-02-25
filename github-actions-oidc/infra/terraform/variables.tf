variable "project_id" {
  description = "GCP project ID."
  type        = string
}

variable "region" {
  description = "Primary GCP region."
  type        = string
  default     = "us-central1"
}

variable "github_repository" {
  description = "GitHub repository in owner/repo format."
  type        = string
}

variable "github_branch" {
  description = "Git branch allowed for deployment."
  type        = string
  default     = "main"
}

variable "deployer_service_account_id" {
  description = "Service account ID used by GitHub Actions deployment workflow."
  type        = string
  default     = "github-deployer"
}

variable "wif_pool_id" {
  description = "Workload Identity Pool ID for GitHub Actions."
  type        = string
  default     = "github-actions"
}

variable "wif_provider_id" {
  description = "Workload Identity Provider ID for GitHub Actions OIDC."
  type        = string
  default     = "github-provider"
}

variable "deployer_roles" {
  description = "IAM project roles for GitHub deployer service account."
  type        = list(string)
  default = [
    "roles/artifactregistry.writer",
    "roles/container.developer",
  ]
}
