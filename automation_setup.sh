#!/bin/bash

echo "Starting setup for Baked 3.0 CI/CD deployment..."

# Step 1: Install Dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

# Step 2: Build Docker Image
echo "Building Docker image..."
docker build -t baked-3-0 .

# Step 3: Set up Kubernetes Deployment
echo "Applying Kubernetes deployment..."
kubectl apply -f k8s/deployment.yaml

# Step 4: Set up GitHub Actions
echo "Setting up GitHub Actions workflows..."
git add .github/workflows/
git commit -m "Set up CI/CD workflows"
git push origin main

# Step 5: Deploy to Cloud (Optional)
echo "Deploying to Cloud..."
docker push my-docker-registry/baked-3-0

echo "Setup complete. Baked 3.0 is ready to launch!"
