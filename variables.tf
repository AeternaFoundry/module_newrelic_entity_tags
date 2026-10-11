variable "entity_tags" {
  description = <<EOT
Map of entity_tags, attributes below
Required:
    - guid
    - tag (block):
        - key (required)
        - values (required)
Optional:
    - timeouts (block):
        - create (optional)
EOT

  type = map(object({
    guid = string
    tag = list(object({
      key    = string
      values = set(string)
    }))
    timeouts = optional(object({
      create = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.entity_tags : (
        length(v.tag) >= 1
      )
    ])
    error_message = "Each tag list must contain at least 1 items"
  }
}

