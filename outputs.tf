output "entity_tags_id" {
  description = "Map of id values across all entity_tags, keyed the same as var.entity_tags"
  value       = { for k, v in newrelic_entity_tags.entity_tags : k => v.id }
}
output "entity_tags_guid" {
  description = "Map of guid values across all entity_tags, keyed the same as var.entity_tags"
  value       = { for k, v in newrelic_entity_tags.entity_tags : k => v.guid }
}
output "entity_tags_tag" {
  description = "Map of tag values across all entity_tags, keyed the same as var.entity_tags"
  value       = { for k, v in newrelic_entity_tags.entity_tags : k => v.tag }
}

