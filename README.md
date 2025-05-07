# Statická stránka s CI/CD v GitLabu

Tento projekt demonstruje nasazení jednoduché HTML stránky pomocí Docker a GitLab CI/CD.

## Co projekt obsahuje

- `index.html` – statická webová stránka
- `Dockerfile` – instrukce k sestavení kontejneru s nginx
- `.gitlab-ci.yml` – automatizované sestavení a nasazení

## CI/CD proces

1. **Build** – sestaví Docker image s webovou stránkou.
2. **Deploy** – spustí image jako kontejner na portu `3100`.

## Spuštění lokálně (volitelné)
```bash
docker build -t my-simple-page .
docker run -d -p 3100:80 my-simple-page
