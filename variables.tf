variable "table_constraints" {
  description = <<EOT
Map of table_constraints, attributes below
Required:
    - columns
    - name
    - table_id
    - type
Optional:
    - comment
    - deferrable
    - enable
    - enforced
    - initially
    - rely
    - validate
    - foreign_key_properties (block):
        - match (optional)
        - on_delete (optional)
        - on_update (optional)
        - references (required, block):
            - columns (required)
            - table_id (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    columns    = list(string)
    name       = string
    table_id   = string
    type       = string
    comment    = optional(string)
    deferrable = optional(bool)
    enable     = optional(bool)
    enforced   = optional(bool)
    initially  = optional(string)
    rely       = optional(bool)
    validate   = optional(bool)
    foreign_key_properties = optional(object({
      match     = optional(string)
      on_delete = optional(string)
      on_update = optional(string)
      references = object({
        columns  = list(string)
        table_id = string
      })
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

