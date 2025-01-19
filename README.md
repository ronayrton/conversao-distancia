# Desafio Docker - Conversão de Distâncias - FakeShop

Este repositório contém a solução para o desafio de Docker envolvendo a criação de um ambiente Docker para a aplicação "Conversão de Distâncias", que faz parte do processo de modernização da empresa FakeShop.

A aplicação demo é responsável por converter métricas de distância, como metros para quilômetros e milhas para metros. O objetivo do desafio é criar um Dockerfile, testar a aplicação e garantir que ela esteja acessível em um contêiner Docker.

## Objetivo

O objetivo deste desafio foi:

1. Fazer um fork do repositório original da aplicação "Conversão de Distâncias".
2. Criar um Dockerfile para a aplicação Python.
3. Criar e testar um contêiner Docker com a aplicação.
4. Publicar a imagem no DockerHub.
5. Subir as alterações para o GitHub com o Dockerfile e o link da imagem publicada.

## Estrutura do Repositório

- `Dockerfile`: O arquivo de configuração para a criação da imagem Docker.
- `README.md`: Este arquivo de documentação.
- `app/`: Contém o código da aplicação de conversão de distâncias.

## Passos para Rodar o Contêiner

### 1. Faça um Fork do Repositório Original

Primeiro, faça um fork do repositório original da aplicação "Conversão de Distâncias" no GitHub. O link do repositório original é:  
[https://github.com/KubeDev/conversao-distancia](https://github.com/KubeDev/conversao-distancia)

### 2. Clone o Repositório Forkado

Clone o repositório que você acabou de forkar para a sua máquina local:

git clone https://github.com/usuario/fork-do-repositorio.git
cd fork-do-repositorio

### 3. Criação do Dockerfile

# Use uma imagem base do Python
FROM python
WORKDIR /app
COPY app/ .
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]


### 4. Criação da Imagem Docker

docker build -t conversao-distancia -f Dockerfile .

### 5. Execução do Contêiner

docker container run -d -p 8181:5000 conversao-distancia

### 6. Teste da Aplicação

curl http://localhost:8181

### 7. Publicação da Imagem no DockerHub

docker login
docker tag conversao-distancia usuario/conversao-distancia:latest
docker push usuario/conversao-distancia:latest

### 8. Adicione o link da imagem no DockerHub

[Imagem Docker no DockerHub] (https://hub.docker.com/repository/docker/ronayrton16011995/conversao-distancia)

### 9. Suba como alterações para o GitHub

git add .
git commit -m "Adicionando Dockerfile e documentação"
git push origin main

## Requisitos
Docker instalado.
Conta no DockerHub para publicar a imagem.
Conta no GitHub para fazer o fork e subir o repositório.

