# Utiliser une image de base légère avec Node.js
FROM node:18-alpine

# Installer Git
RUN apk add --no-cache git

# Définir un répertoire de travail
WORKDIR /app

# Cloner un dépôt (à remplacer par l'URL de votre dépôt)
ARG REPO_URL=https://github.com/laborifermc/node-js-sample.git
RUN git clone $REPO_URL .

# Afficher le contenu du répertoire
RUN ls -al /app

# Installer les dépendances du projet
WORKDIR /app/node-js-sample  
RUN npm install
# Afficher le contenu du répertoire après l'installation des dépendances
RUN ls -al /app/node-js-sample

# Exposer le port utilisé par l'application (remplacez "3000" par le port de votre app)
EXPOSE 8080

# Commande par défaut pour démarrer l'application
CMD ["npm", "start"]
