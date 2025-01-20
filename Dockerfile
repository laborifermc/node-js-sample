# Utiliser une image de base légère avec Node.js
FROM node:18-alpine

# Installer Git
RUN apk add --no-cache git

# Définir un répertoire de travail
WORKDIR /app

# Cloner un dépôt (à remplacer par l'URL de votre dépôt)
ARG REPO_URL=https://github.com/laborifermc/node-js-sample.git
RUN git clone $REPO_URL .
RUN cd node-js-sample
# Installer les dépendances du projet
RUN npm install

# Exposer le port utilisé par l'application (remplacez "3000" par le port de votre app)
EXPOSE 8080

# Commande par défaut pour démarrer l'application
CMD ["npm", "start"]
