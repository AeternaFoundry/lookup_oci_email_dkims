data "oci_email_dkims" "email_dkims_lookup" {
  for_each = var.email_dkims_lookup

  email_domain_id = each.value.email_domain_id
  name            = each.value.name
  state           = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

