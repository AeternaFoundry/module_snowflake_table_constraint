resource "snowflake_table_constraint" "table_constraints" {
  for_each = var.table_constraints

  columns    = each.value.columns
  name       = each.value.name
  table_id   = each.value.table_id
  type       = each.value.type
  comment    = each.value.comment
  deferrable = each.value.deferrable
  enable     = each.value.enable
  enforced   = each.value.enforced
  initially  = each.value.initially
  rely       = each.value.rely
  validate   = each.value.validate

  dynamic "foreign_key_properties" {
    for_each = each.value.foreign_key_properties != null ? [each.value.foreign_key_properties] : []
    content {
      match     = foreign_key_properties.value.match
      on_delete = foreign_key_properties.value.on_delete
      on_update = foreign_key_properties.value.on_update
      references {
        columns  = foreign_key_properties.value.references.columns
        table_id = foreign_key_properties.value.references.table_id
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

