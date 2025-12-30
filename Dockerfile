# Imagem base do Node (como se fosse o "Windows/Linux" do container)
FROM node:18

# Diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos que descrevem as dependências
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Copia o restante dos arquivos do projeto
COPY . .

# Expõe a porta 80 dentro do container
EXPOSE 80

# Comando para iniciar a aplicação
CMD ["npm", "start"]