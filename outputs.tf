output "elasticsearch_index_aliases_id" {
  description = "Map of id values across all elasticsearch_index_aliases, keyed the same as var.elasticsearch_index_aliases except keys with no id are omitted"
  value       = { for k, v in elasticstack_elasticsearch_index_alias.elasticsearch_index_aliases : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elasticsearch_index_aliases_elasticsearch_connection" {
  description = "Map of elasticsearch_connection values across all elasticsearch_index_aliases, keyed the same as var.elasticsearch_index_aliases except keys with no elasticsearch_connection are omitted"
  value       = { for k, v in elasticstack_elasticsearch_index_alias.elasticsearch_index_aliases : k => v.elasticsearch_connection if v.elasticsearch_connection != null && length(v.elasticsearch_connection) > 0 }
  sensitive   = true
}
output "elasticsearch_index_aliases_name" {
  description = "Map of name values across all elasticsearch_index_aliases, keyed the same as var.elasticsearch_index_aliases except keys with no name are omitted"
  value       = { for k, v in elasticstack_elasticsearch_index_alias.elasticsearch_index_aliases : k => v.name if v.name != null && length(v.name) > 0 }
}
output "elasticsearch_index_aliases_read_indices" {
  description = "Map of read_indices values across all elasticsearch_index_aliases, keyed the same as var.elasticsearch_index_aliases except keys with no read_indices are omitted"
  value       = { for k, v in elasticstack_elasticsearch_index_alias.elasticsearch_index_aliases : k => v.read_indices if v.read_indices != null && length(v.read_indices) > 0 }
}
output "elasticsearch_index_aliases_write_index" {
  description = "Map of write_index values across all elasticsearch_index_aliases, keyed the same as var.elasticsearch_index_aliases except keys with no write_index are omitted"
  value       = { for k, v in elasticstack_elasticsearch_index_alias.elasticsearch_index_aliases : k => v.write_index if v.write_index != null && length(v.write_index) > 0 }
}

