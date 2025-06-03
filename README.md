# Baked 3.0 & Flowly CI/CD Ecosystem

This repository contains **Baked 3.0**—a streamlined, AI-powered platform that enables **automated workflow creation**, **real-time optimization**, and **continuous deployment**. With the integration of **Flowly**, this system scales to accommodate an evolving set of workflows and allows real-time task orchestration, from personal productivity to AI-driven tasks.

## Features

- **Real-Time Workflow Creation**: Build workflows using **Streamlit** with an intuitive drag-and-drop interface.
- **CI/CD Integration**: Built-in GitHub Actions for **automated testing** and **deployment**.
- **Flowly Orchestration**: Automated AI task optimization and real-time orchestration.
- **Cloud Auto-Scaling**: Kubernetes integration ensures seamless scaling for high-demand tasks.
- **Hugging Face Integration**: Direct connection to Hugging Face models for NLP tasks.

## Setup and Installation

### 1. Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/yourusername/baked-3-0.git
cd baked-3-0
```

### 2. Install Dependencies

Install the necessary Python dependencies:

```bash
pip install -r requirements.txt
```

### 3. Setup Docker

Build the Docker container:

```bash
docker build -t baked-3-0 .
```

Run the Docker container:

```bash
docker run -d -p 8080:8080 baked-3-0
```

### 4. Kubernetes Deployment

To deploy on Kubernetes, follow these steps:

- **Create a Kubernetes Cluster** on your preferred cloud provider (GCP, AWS, etc.).
- **Apply the deployment configuration**:

```bash
kubectl apply -f k8s/deployment.yaml
```

### 5. Set Up GitHub Actions

Make sure your GitHub repository is connected to **GitHub Actions**.

1. **CI Workflow**: The `ci.yml` file handles continuous integration, automatically running tests and building the Docker container when changes are pushed to **dev** or **feature branches**.

2. **CD Workflow**: The `cd.yml` file deploys the Docker container to your cloud environment after merging changes to **main**.

### 6. Hugging Face Integration

Use **Hugging Face’s API** to integrate pre-trained NLP models (e.g., GPT-2) for real-time text generation and processing within your workflows. Refer to the Hugging Face docs for API usage.

### 7. Copilot Agent Setup

Configure the **Copilot Agent** to automatically sync and manage **data connections**.

---

## Contribution Guidelines

Feel free to contribute to this project! Follow these steps:

1. **Fork the repository**.
2. Create a **new branch**.
3. Make your changes and **commit** them.
4. **Push** your branch and open a **pull request**.
