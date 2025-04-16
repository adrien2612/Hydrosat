variable "minio_namespace" {
  description = "The Kubernetes namespace for the MinIO deployment."
  type        = string
  default     = "default"
}

variable "minio_name" {
  description = "The name of the MinIO deployment."
  type        = string
  default     = "minio"
}

variable "minio_image" {
  description = "The Docker image for MinIO."
  type        = string
  default     = "minio/minio:latest"
}

variable "minio_access_key" {
  description = "The access key for MinIO."
  type        = string
  default     = ""  
}

variable "minio_secret_key" {
  description = "The secret key for MinIO."
  type        = string
  default     = ""  
}

variable "minio_port" {
  description = "The port on which MinIO runs."
  type        = number
  default     = 9000
}

variable "minio_command" {
  description = "The command used to start MinIO."
  type        = list(string)
  default     = ["server", "/data"]
}
