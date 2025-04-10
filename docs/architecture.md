# Architecture Overview

The Hydrosat Geospatial Project is designed to run on a local Kubernetes cluster. The key components include:

- **Dagster** deployed via Kubernetes (Dagit & daemon).
- **MinIO** deployed via Kubernetes to simulate an S3 bucket.
- **Infrastructure as Code (IaC)** using Terraform to provision the MinIO resources.
- **Containerization** through Docker and Docker Compose to ensure portability.
- **Reproducible Environments** using Conda and conda-lock to manage dependencies.
- **Monitoring & Logging** using Prometheus, Grafana, and a logging stack for observability.
- **Geospatial Processing** with Python libraries (GeoPandas, rasterio, etc.) to handle NDWI retrieval from Google Earth Engine (GEE).

Additional details on deployment steps and how these components interact are included in the deployment guide.
