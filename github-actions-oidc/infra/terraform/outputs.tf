output "github_wif_provider" {
  description = "Workload Identity Provider for GitHub Actions auth action."
  value       = google_iam_workload_identity_pool_provider.github_oidc.name
}

output "github_deployer_service_account_email" {
  description = "Service account email used by GitHub Actions deployments."
  value       = google_service_account.github_deployer.email
}
