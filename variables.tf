variable "email_dkims_lookup" {
  description = <<EOT
Map of email_dkims_lookup, attributes below
Required:
    - email_domain_id
Optional:
    - name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    email_domain_id = string
    name            = optional(string)
    state           = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

