#a imagem a ser usada de base
FROM node
#informar o diretório padrão
WORKDIR /
#variaveis de a,biente durante build do dockerfile
ARG PORT=3000
#variavel de ambiente da aplicacao
ENV PORT=$PORT
#deixar a porta da máquina visivel
EXPOSE $PORT
#copiar os arquivos do terminal que estamos para a imagem que estamos criando
COPY ./ .
#um comando em bash rodado para pré iniciar a aplicação
RUN npm install
#executa o comando para iniciar a aplicação
ENTRYPOINT npm start
