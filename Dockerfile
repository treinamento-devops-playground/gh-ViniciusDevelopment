# Usar uma imagem base do Python
FROM python:3.10-slim

# Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiar os arquivos do seu projeto para dentro do contêiner
COPY . /app/

# Instalar as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Expôr a porta em que o Django vai rodar
EXPOSE 8000

# Comando para rodar o servidor de desenvolvimento do Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
