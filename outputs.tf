output "load_balancer_load_balancer_routing_policies_lookup_id" {
  description = "Map of id values across all load_balancer_load_balancer_routing_policies_lookup, keyed the same as var.load_balancer_load_balancer_routing_policies_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_load_balancer_load_balancer_routing_policies.load_balancer_load_balancer_routing_policies_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "load_balancer_load_balancer_routing_policies_lookup_filter" {
  description = "Map of filter values across all load_balancer_load_balancer_routing_policies_lookup, keyed the same as var.load_balancer_load_balancer_routing_policies_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_load_balancer_load_balancer_routing_policies.load_balancer_load_balancer_routing_policies_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "load_balancer_load_balancer_routing_policies_lookup_load_balancer_id" {
  description = "Map of load_balancer_id values across all load_balancer_load_balancer_routing_policies_lookup, keyed the same as var.load_balancer_load_balancer_routing_policies_lookup except keys with no load_balancer_id are omitted"
  value       = { for k, v in data.oci_load_balancer_load_balancer_routing_policies.load_balancer_load_balancer_routing_policies_lookup : k => v.load_balancer_id if v.load_balancer_id != null && length(v.load_balancer_id) > 0 }
}
output "load_balancer_load_balancer_routing_policies_lookup_routing_policies" {
  description = "Map of routing_policies values across all load_balancer_load_balancer_routing_policies_lookup, keyed the same as var.load_balancer_load_balancer_routing_policies_lookup except keys with no routing_policies are omitted"
  value       = { for k, v in data.oci_load_balancer_load_balancer_routing_policies.load_balancer_load_balancer_routing_policies_lookup : k => v.routing_policies if v.routing_policies != null && length(v.routing_policies) > 0 }
}

