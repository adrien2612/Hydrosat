resource "kubernetes_deployment" "minio" {
  metadata {
    name      = var.minio_name
    namespace = var.minio_namespace
  }
  spec {
    replicas = 1

    selector {
      match_labels = {
        app = var.minio_name
      }
    }
    template {
      metadata {
        labels = {
          app = var.minio_name
        }
      }
      spec {
        container {
          name  = "minio"
          image = var.minio_image

          args = var.minio_command

          port {
            container_port = var.minio_port
          }
          env {
            name  = "MINIO_ACCESS_KEY"
            value = var.minio_access_key
          }
          env {
            name  = "MINIO_SECRET_KEY"
            value = var.minio_secret_key
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "minio" {
  metadata {
    name      = var.minio_name
    namespace = var.minio_namespace
  }
  spec {
    selector = {
      app = var.minio_name
    }
    port {
      port        = var.minio_port
      target_port = var.minio_port
    }
    type = "ClusterIP"
  }
}
