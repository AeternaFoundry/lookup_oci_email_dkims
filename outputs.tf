output "email_dkims_lookup_id" {
  description = "Map of id values across all email_dkims_lookup, keyed the same as var.email_dkims_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_email_dkims.email_dkims_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "email_dkims_lookup_dkim_collection" {
  description = "Map of dkim_collection values across all email_dkims_lookup, keyed the same as var.email_dkims_lookup except keys with no dkim_collection are omitted"
  value       = { for k, v in data.oci_email_dkims.email_dkims_lookup : k => v.dkim_collection if v.dkim_collection != null && length(v.dkim_collection) > 0 }
}
output "email_dkims_lookup_email_domain_id" {
  description = "Map of email_domain_id values across all email_dkims_lookup, keyed the same as var.email_dkims_lookup except keys with no email_domain_id are omitted"
  value       = { for k, v in data.oci_email_dkims.email_dkims_lookup : k => v.email_domain_id if v.email_domain_id != null && length(v.email_domain_id) > 0 }
}
output "email_dkims_lookup_filter" {
  description = "Map of filter values across all email_dkims_lookup, keyed the same as var.email_dkims_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_email_dkims.email_dkims_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "email_dkims_lookup_name" {
  description = "Map of name values across all email_dkims_lookup, keyed the same as var.email_dkims_lookup except keys with no name are omitted"
  value       = { for k, v in data.oci_email_dkims.email_dkims_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "email_dkims_lookup_state" {
  description = "Map of state values across all email_dkims_lookup, keyed the same as var.email_dkims_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_email_dkims.email_dkims_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

