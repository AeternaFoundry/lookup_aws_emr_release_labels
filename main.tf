data "aws_emr_release_labels" "emr_release_labels_lookup" {
  for_each = var.emr_release_labels_lookup

  region = each.value.region

  dynamic "filters" {
    for_each = each.value.filters != null ? [each.value.filters] : []
    content {
      application = filters.value.application
      prefix      = filters.value.prefix
    }
  }
}

