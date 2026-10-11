resource "newrelic_entity_tags" "entity_tags" {
  for_each = var.entity_tags

  guid = each.value.guid

  dynamic "tag" {
    for_each = each.value.tag
    content {
      key    = tag.value.key
      values = tag.value.values
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
    }
  }
}

