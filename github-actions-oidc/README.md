# GitHub Actions OIDC on GCP (Practical Files)

This folder contains practical, copy-paste-ready files for:

- Terraform setup for GCP Workload Identity Federation (WIF)
- GitHub Actions deploy workflow using OIDC (no long-lived JSON keys)

## Important caveat

this folder doesnt provide complete GCP infrastucture configuration required for a complete example, it only prodides examples for OIDC setup. GKE, networking and etc should be provisioned additionaly.

## Folder layout

- `.github/workflows/deploy.yaml`
- `infra/terraform/main.tf`
- `infra/terraform/variables.tf`
- `infra/terraform/outputs.tf`
- `infra/terraform/terraform.tfvars.example`

## Quick usage

1. Configure Terraform values in `infra/terraform/terraform.tfvars`.
2. Run Terraform to create WIF and deployer service account.
3. Set GitHub repository variables from Terraform outputs.
4. Use the workflow in `.github/workflows/deploy-gke.yaml`.

## Required GitHub variables

- `GCP_PROJECT_ID`
- `GCP_REGION`
- `GCP_WIF_PROVIDER`
- `GCP_DEPLOYER_SERVICE_ACCOUNT`
- `GKE_CLUSTER_NAME`
- `GKE_CLUSTER_LOCATION`
- `AR_REPOSITORY`

