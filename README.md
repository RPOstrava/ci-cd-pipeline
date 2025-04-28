# Simple Web Page with GitLab CI/CD

This project demonstrates a simple static web page with two buttons displaying product prices.  
The page is containerized with Docker and deployed using GitLab CI/CD pipelines.

## Project Structure

- `index.html` - basic webpage with buttons
- `script.js` - logic for displaying product prices
- `Dockerfile` - instructions for building Docker image using nginx
- `.gitlab-ci.yml` - GitLab CI/CD pipeline configuration
- `README.md` - project description

## How to run locally

```bash
docker build -t my-simple-page .
docker run -d -p 3100:80 my-simple-page
