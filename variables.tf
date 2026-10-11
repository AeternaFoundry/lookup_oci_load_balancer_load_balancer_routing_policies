variable "load_balancer_load_balancer_routing_policies_lookup" {
  description = <<EOT
Map of load_balancer_load_balancer_routing_policies_lookup, attributes below
Required:
    - load_balancer_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    load_balancer_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.load_balancer_load_balancer_routing_policies_lookup : (
        alltrue([for item in v.routing_policies : (item.rules == null || alltrue([for item in item.rules : (item.actions == null || alltrue([for item in item.actions : (item.name == null || (contains([for v in ["FORWARD_TO_BACKENDSET"] : lower(v)], lower(item.name))))]))]))])
      )
    ])
    error_message = "must be one of: \"FORWARD_TO_BACKENDSET\""
  }
}

