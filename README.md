# AWS EKS Infrastructure

Infrastructure as Code (IaC) project for deploying a production-like Kubernetes environment on AWS using Terraform.

The project provisions an Amazon EKS cluster, installs NGINX Ingress Controller, configures AWS resources, and prepares the environment for ArgoCD and GitOps deployment.

---

## Features

- Amazon EKS Cluster
- Managed Node Group
- NGINX Ingress Controller
- External DNS
- Route53 Hosted Zone integration
- AWS ACM Certificate
- Terraform Remote State (S3 + DynamoDB)

---

## Project Structure

```text
.
├── backend.tf
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── eks-cluster.tf
├── eks-worker-nodes.tf
├── ingress_controller.tf
├── iam.tf
├── sg.tf
├── acm.tf
├── ebs-csi.tf
└── outputs.tf
```

---

## Prerequisites

- AWS Account
- AWS CLI
- Terraform
- kubectl
- Helm

---

## Configure AWS

Create an AWS CLI profile:

```bash
aws configure --profile student
```

---

## Initialize Terraform

```bash
terraform init
```

---

## Review Infrastructure

```bash
terraform plan
```

---

## Deploy Infrastructure

```bash
terraform apply
```

---

## Configure kubectl

```bash
aws eks update-kubeconfig \
  --name <cluster-name> \
  --region eu-central-1 \
  --profile student
```

Verify the cluster:

```bash
kubectl get nodes
```

---

## Destroy Infrastructure

```bash
terraform destroy
```

---

## Technologies

- Terraform
- AWS EKS
- AWS IAM
- AWS Route53
- AWS ACM
- AWS S3
- AWS DynamoDB
- Kubernetes
- Helm
- NGINX Ingress Controller

---

## Remote State

Terraform state is stored remotely using:

- Amazon S3
- DynamoDB state locking

---

## Next Steps

- Install ArgoCD
- Deploy the Python backend using GitOps
- Configure application Ingress
- Connect the application to a custom domain
