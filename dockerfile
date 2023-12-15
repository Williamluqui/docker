# Exemplo de Dockerfile para uso com WSL

# Ultima versão node 
FROM node:alpine 

# Cria um diretorio
RUN mkdir -p /usr/src/app
# Define o diretório de trabalho
WORKDIR /usr/src/app

# Atualizar e Instalar dependencias 
RUN apk update && apk upgrade

# Removendo node_modules da pasta raiz 
RUN rm -rf ./node_modules
RUN rm -rf package-lock.json

# Copie o package.json e o package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie o restante dos arquivos do projeto para o diretório de trabalho
COPY . .

EXPOSE 3000 

# Comando padrão para iniciar a aplicação
CMD [ "npm", "start" ]

