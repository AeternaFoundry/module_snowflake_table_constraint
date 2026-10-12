output "table_constraints_id" {
  description = "Map of id values across all table_constraints, keyed the same as var.table_constraints except keys with no id are omitted"
  value       = { for k, v in snowflake_table_constraint.table_constraints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "table_constraints_columns" {
  description = "Map of columns values across all table_constraints, keyed the same as var.table_constraints except keys with no columns are omitted"
  value       = { for k, v in snowflake_table_constraint.table_constraints : k => v.columns if v.columns != null && length(v.columns) > 0 }
}
output "table_constraints_comment" {
  description = "Map of comment values across all table_constraints, keyed the same as var.table_constraints except keys with no comment are omitted"
  value       = { for k, v in snowflake_table_constraint.table_constraints : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "table_constraints_deferrable" {
  description = "Map of deferrable values across all table_constraints, keyed the same as var.table_constraints except keys with no deferrable are omitted"
  value       = { for k, v in snowflake_table_constraint.table_constraints : k => v.deferrable if v.deferrable != null }
}
output "table_constraints_enable" {
  description = "Map of enable values across all table_constraints, keyed the same as var.table_constraints except keys with no enable are omitted"
  value       = { for k, v in snowflake_table_constraint.table_constraints : k => v.enable if v.enable != null }
}
output "table_constraints_enforced" {
  description = "Map of enforced values across all table_constraints, keyed the same as var.table_constraints except keys with no enforced are omitted"
  value       = { for k, v in snowflake_table_constraint.table_constraints : k => v.enforced if v.enforced != null }
}
output "table_constraints_foreign_key_properties" {
  description = "Map of foreign_key_properties values across all table_constraints, keyed the same as var.table_constraints except keys with no foreign_key_properties are omitted"
  value       = { for k, v in snowflake_table_constraint.table_constraints : k => one(v.foreign_key_properties) if v.foreign_key_properties != null && length(v.foreign_key_properties) > 0 }
}
output "table_constraints_initially" {
  description = "Map of initially values across all table_constraints, keyed the same as var.table_constraints except keys with no initially are omitted"
  value       = { for k, v in snowflake_table_constraint.table_constraints : k => v.initially if v.initially != null && length(v.initially) > 0 }
}
output "table_constraints_name" {
  description = "Map of name values across all table_constraints, keyed the same as var.table_constraints except keys with no name are omitted"
  value       = { for k, v in snowflake_table_constraint.table_constraints : k => v.name if v.name != null && length(v.name) > 0 }
}
output "table_constraints_rely" {
  description = "Map of rely values across all table_constraints, keyed the same as var.table_constraints except keys with no rely are omitted"
  value       = { for k, v in snowflake_table_constraint.table_constraints : k => v.rely if v.rely != null }
}
output "table_constraints_table_id" {
  description = "Map of table_id values across all table_constraints, keyed the same as var.table_constraints except keys with no table_id are omitted"
  value       = { for k, v in snowflake_table_constraint.table_constraints : k => v.table_id if v.table_id != null && length(v.table_id) > 0 }
}
output "table_constraints_type" {
  description = "Map of type values across all table_constraints, keyed the same as var.table_constraints except keys with no type are omitted"
  value       = { for k, v in snowflake_table_constraint.table_constraints : k => v.type if v.type != null && length(v.type) > 0 }
}
output "table_constraints_validate" {
  description = "Map of validate values across all table_constraints, keyed the same as var.table_constraints except keys with no validate are omitted"
  value       = { for k, v in snowflake_table_constraint.table_constraints : k => v.validate if v.validate != null }
}

