# Utiliser une image de base légère
FROM alpine:latest

# Installer Git
RUN apk add --no-cache git

# Définir un répertoire de travail
WORKDIR /app

# Cloner un dépôt (à remplacer par l'URL de votre dépôt)
ARG REPO_URL=https://github.com/laborifermc/node-js-sample.git
RUN git clone $REPO_URL .

# Optionnel : Exposer un port ou définir une commande par défaut
CMD ["sh"]
