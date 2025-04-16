output "minio_service_ip" {
  description = "The cluster IP of the MinIO service."
  value       = kubernetes_service.minio.spec.0.cluster_ip
}

output "minio_service_port" {
  description = "The port on which the MinIO service is running."
  value       = var.minio_port
}
