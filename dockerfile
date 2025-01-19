# Dockerfile para a aplicação de Conversão de Distâncias

# Usando uma imagem base leve do Python
FROM python

# Criando o diretório de trabalho
WORKDIR /app

# Copiando os arquivos de dependências
COPY requirements.txt /app/

# Instalando as dependências
RUN pip install -r requirements.txt

# Copiando o código da aplicação
COPY . /app

# Expondo a porta que a aplicação utiliza
EXPOSE 5000

# Comando para iniciar a aplicação
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
