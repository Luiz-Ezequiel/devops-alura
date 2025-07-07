# Utilizando a imagem alpine por ser uma imagem mais leve, que agiliza o processo de build da imagem, e gasta menos recursos, por ser uma imagem com menos dependências. 
FROM python:3.13.5-alpine3.22

# Definindo o diretório no container onde a aplicação ficara
WORKDIR /app

# Copiando e instalando os requerimentos no container
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt 

# Copiando os arquivos, com excessão dos definidos no .dockerignore
COPY . .

# Expondo a porta do container
EXPOSE 800

# Rodando o comando para executar a aplicação e mapeando à porta exposta acima
CMD [ "uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]