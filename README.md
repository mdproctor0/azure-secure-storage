# Azure Secure Storage — Terraform Lab

**Deployed and validated in Azure**  
**Built:** June 2026  
**Tools:** Terraform · AzureRM Provider v4.x · Azure CLI

---

## What This Deploys

A security-hardened Azure Storage Account provisioned entirely through Terraform — demonstrating secure-by-default design and infrastructure-as-code discipline.

| Resource | Purpose |
|----------|---------|
| Resource Group | Lifecycle and cost boundary |
| Storage Account | Hardened storage with security controls enforced at deploy time |

---

## Security Controls Applied

| Control | Setting | Why |
|---------|---------|-----|
| HTTPS only | Enabled | Encrypts data in transit |
| Minimum TLS version | TLS 1.2 | Eliminates known TLS vulnerabilities |
| Public network access | Disabled | Unreachable from public internet |
| Blob public access | Disabled | No anonymous container or blob access |

---

## Project Structure

```
azure-secure-storage/
├── providers.tf              # AzureRM provider, version pinned ~> 4.0
├── variables.tf              # Input variable declarations
├── terraform.tfvars.example  # Example values — copy to terraform.tfvars
├── main.tf                   # Resource group
├── storage.tf                # Hardened storage account
└── outputs.tf                # Key outputs after deployment
```

---

## How to Deploy

```bash
# Authenticate
az login

# Initialize
terraform init

# Review
terraform plan -var-file="terraform.tfvars"

# Deploy
terraform apply -var-file="terraform.tfvars"

# Destroy when done
terraform destroy -var-file="terraform.tfvars"
```

---

## Key Concepts Demonstrated

- **Provider version pinning** — `~> 4.0` prevents breaking changes from auto-upgrading
- **Variables + tfvars** — portable configuration without hardcoded values
- **Implicit dependencies** — storage account references resource group, Terraform handles creation order automatically
- **Secure-by-default** — security enforced at infrastructure level, not post-deploy
- **Outputs** — resource group name, storage account name and ID surfaced after apply

---

## Related Projects

- [M365 Cloud Engineering Labs](https://github.com/mdproctor0/m365-cloud-engineering-labs)
- [Secure Azure Foundation — Terraform](https://github.com/mdproctor0/secure-azure-foundation-terraform)
- [AZ-104 Labs](https://github.com/mdproctor0/az104-labs)
