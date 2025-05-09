# Simple Product Price Page with GitLab CI/CD

This project demonstrates how to set up a basic GitLab CI/CD pipeline using a static HTML page and Docker.

## 📄 Project Description

The application is a simple static webpage displaying two buttons. Each button shows the price of a different product using JavaScript. The page is served using an Nginx container.

## 🛠 Technologies Used

- **HTML** – Basic webpage
- **JavaScript** – Displays product prices (via script.js)
- **Docker** – Used to containerize and run the application with Nginx
- **GitLab CI/CD** – Automates building, testing, and deploying the application

## 📁 Project Structure

project/
├── index.html # Simple webpage with buttons
├── script.js # Logic for displaying product prices
├── Dockerfile # Docker image definition using Nginx
├── .gitlab-ci.yml # GitLab CI/CD configuration
└── README.md # This file


## 🧪 How the CI/CD Pipeline Works

The `.gitlab-ci.yml` file defines four jobs organized in three stages: **build**, **test**, and **deploy**.

### 🔨 Build Stage (Parallel Jobs)
1. **`build-image`**  
   Builds the Docker image from the Dockerfile.
2. **`build-check`**  
   Performs a basic HTML check (e.g., confirms that `<title>` is present).

### ✅ Test Stage
- **`test`**  
  Starts a container from the image, checks if the webpage loads correctly (via `curl`), then removes the container.

### 🚀 Deploy Stage
- **`deploy`**  
  If the test job passes, the application is deployed again in a container running on port `3100`.

## 🔧 Port Used
The final deployment runs the container and exposes the app on port `3100`.

## ⚙️ How to Use

1. Push this project to a GitLab repository with GitLab CI enabled.
2. Make sure you have a GitLab Runner (shared or self-hosted) registered and running.
3. Commit any changes — the pipeline will automatically run and handle everything (build, test, deploy).

## ✅ Requirements

- Docker installed on the GitLab Runner
- GitLab Runner with access to Docker (preferably using the Docker executor)

---

