variable "emr_release_labels_lookup" {
  description = <<EOT
Map of emr_release_labels_lookup, attributes below
Optional:
    - region
    - filters (block):
        - application (optional)
        - prefix (optional)
EOT

  type = map(object({
    region = optional(string)
    filters = optional(object({
      application = optional(string)
      prefix      = optional(string)
    }))
  }))
}

