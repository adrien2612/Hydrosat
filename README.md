# Hydrosat Geospatial Project

This project is a technical challenge for a Data Engineer specializing in geospatial data at Hydrosat. The goal is to deploy Dagster on a local Kubernetes cluster (using Minikube or Kind) and materialize a Dagster asset with daily partitions that depend on previous partitions. The asset will process geospatial data (including NDWI retrieval from Google Earth Engine) and output data into a simulated S3 bucket using MinIO.

## Key Components
- **Dagster** for asset and pipeline orchestration.
- **MinIO** for simulating S3 storage.
- **Terraform** for provisioning the infrastructure.
- **Docker & Docker Compose** for containerization and easy local deployment.
- **Conda/conda-lock** for managing a reproducible environment.
- **Prometheus and Grafana** for monitoring.
- **Logging stack (Fluentd/Promtail + Elasticsearch/Loki)** for centralized log management.

Please refer to the `/docs` folder for a detailed architecture description and deployment instructions.
