# IAP Agent Registry Endpoint IAM Binding

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| agent\_engine\_effective\_ids | List of Reasoning Engine effective identities to be dynamically formatted and added to the IAM binding members. | `list(string)` | `[]` | no |
| condition | An optional IAM Condition for the binding. | <pre>object({<br>    title       = string<br>    description = optional(string)<br>    expression  = string<br>  })</pre> | `null` | no |
| endpoint\_id | The ID of the Agent Registry endpoint. | `string` | n/a | yes |
| location | The location of the resource. | `string` | n/a | yes |
| members | Identities that will be granted the privilege in the role. | `list(string)` | `[]` | no |
| project\_id | The ID of the project in which the resource belongs. | `string` | n/a | yes |
| role | The role that should be applied. E.g., roles/iap.egressor. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| etag | The etag of the IAM binding. |
| iap\_policy\_id | The ID of the IAM binding. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
