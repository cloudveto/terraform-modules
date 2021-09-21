output "docdb_cluster" {
  value = aws_docdb_cluster.docdb.id
}
output "endpoint" {
  value = aws_docdb_cluster.docdb.endpoint
}