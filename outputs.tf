output "emr_release_labels_lookup_id" {
  description = "Map of id values across all emr_release_labels_lookup, keyed the same as var.emr_release_labels_lookup"
  value       = { for k, v in data.aws_emr_release_labels.emr_release_labels_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "emr_release_labels_lookup_filters" {
  description = "Map of filters values across all emr_release_labels_lookup, keyed the same as var.emr_release_labels_lookup"
  value       = { for k, v in data.aws_emr_release_labels.emr_release_labels_lookup : k => one(v.filters) if v.filters != null && length(v.filters) > 0 }
}
output "emr_release_labels_lookup_region" {
  description = "Map of region values across all emr_release_labels_lookup, keyed the same as var.emr_release_labels_lookup"
  value       = { for k, v in data.aws_emr_release_labels.emr_release_labels_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "emr_release_labels_lookup_release_labels" {
  description = "Map of release_labels values across all emr_release_labels_lookup, keyed the same as var.emr_release_labels_lookup"
  value       = { for k, v in data.aws_emr_release_labels.emr_release_labels_lookup : k => v.release_labels if v.release_labels != null && length(v.release_labels) > 0 }
}

