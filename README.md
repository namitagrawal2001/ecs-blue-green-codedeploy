# 🚀 ECS Blue Green Deployment with CodeDeploy (Strapi App)

This project demonstrates how to deploy a Strapi application on AWS using:

- Amazon ECS (Fargate)
- Application Load Balancer (ALB)
- AWS CodeDeploy (Blue/Green deployment)
- Terraform (Infrastructure as Code)
- GitHub Actions (CI/CD)

The goal is to achieve zero downtime deployments using Blue/Green strategy.

---

## 🧠 Project Overview

In this setup:

- ECS runs the Strapi container
- ALB routes traffic
- Two target groups (Blue and Green) are used
- CodeDeploy shifts traffic during deployment
- Terraform manages infrastructure
- GitHub Actions automates deployment

---

## 🏗 Architecture

User → ALB → Target Group (Blue/Green) → ECS Service → Strapi Container

During deployment:

1. New version runs in Green
2. Health checks pass
3. Traffic shifts from Blue → Green
4. Old version is terminated

---

## ⚙️ Tech Stack

- AWS ECS Fargate
- AWS CodeDeploy
- Application Load Balancer
- Terraform
- Docker
- Strapi
- GitHub Actions

---

## 📂 Project Structure


modules/
alb/
ecs/
codedeploy/
networking/
security/

environments/
dev/

.github/workflows/
ci.yml
deploy.yml


---

## 🚀 Deployment Steps

### 1️⃣ Initialize Terraform


terraform init


### 2️⃣ Plan Infrastructure


terraform plan


### 3️⃣ Apply


terraform apply


---

## 🔄 Blue Green Deployment Flow

1. New task definition created
2. CodeDeploy creates replacement task set
3. Health checks run
4. Traffic shifts gradually
5. Old task terminated

---

## 📊 Features

✅ Zero downtime deployments  
✅ Automated infrastructure  
✅ Canary traffic shifting  
✅ Rollback support  
✅ CloudWatch logging  
✅ CI/CD ready  

---

## 🧑‍💻 Author

**Namit Agrawal**

GitHub: https://github.com/namitagrawal2001

---

## 📜 License

This project is for learning and demonstration purposes.