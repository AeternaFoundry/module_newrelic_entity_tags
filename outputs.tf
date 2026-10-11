output "entity_tags_id" {
  description = "Map of id values across all entity_tags, keyed the same as var.entity_tags except keys with no id are omitted"
  value       = { for k, v in newrelic_entity_tags.entity_tags : k => v.id if v.id != null && length(v.id) > 0 }
}
output "entity_tags_guid" {
  description = "Map of guid values across all entity_tags, keyed the same as var.entity_tags except keys with no guid are omitted"
  value       = { for k, v in newrelic_entity_tags.entity_tags : k => v.guid if v.guid != null && length(v.guid) > 0 }
}
output "entity_tags_tag" {
  description = "Map of tag values across all entity_tags, keyed the same as var.entity_tags except keys with no tag are omitted"
  value       = { for k, v in newrelic_entity_tags.entity_tags : k => v.tag if v.tag != null && length(v.tag) > 0 }
}

