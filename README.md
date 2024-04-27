# Tech Challenge Delivery Project
Projeto entregável da Pós de Arquitetura de Software na FIAP

## Descrição
Este projeto é um desafio proposto pela FIAP para a disciplina de Arquitetura de Software. O objetivo é criar uma aplicação que simule um sistema de restaurante usando AWS com IaaC/Terraform, AWS EKS, Lambdas, API Gateway.

## Tecnologias
- Terraform
- AWS
- AWS EKS
- AWS Lambda
- AWS API Gateway
- AWS RDS

## Arquitetura
TODO - Usar [mermaid](https://mermaid.js.org/intro/) para desenhar a arquitetura

## Como provisionar a infraestrutura

### Pré-requisitos
- [ ] Conta na AWS
- [ ] Terraform instalado
- [ ] AWS CLI configurado
- [ ] Kubectl instalado
- [ ] Docker instalado

### Passo a passo
1. Iniciar AWS Academy e configurar AWS CLI com as credenciais
2. Provisionar a infraestrutura do RDS PostgreSQL `make postgres` e verificar a criação do banco de dados usando algum cliente SQL
3. Provisionar a infraestrutura do EKS `make eks`, aguardar até que o cluster esteja pronto e criar o nodegroup e aguardar até que o nodegroup esteja pronto  
4. Configurar o kubectl para acessar o cluster `make eks-config` 
5. Gerar a nova secret do banco de dados para o Host `echo 'tech-challenge-db.czj1nxgd8v9c.us-east-1.rds.amazonaws.com' | base64` e atualizar o arquivo `k8s/secret.yaml` com o valor gerado
6. Aplicar os manifestos do Kubernetes da API
   1. `kubectl apply -f k8s/secret.yaml`
   2. `kubectl apply -f k8s/deployment.yaml`
   3. `kubectl apply -f k8s/service.yaml`
   5. `kubectl apply -f k8s/hpa.yaml`
7. Provisionar a infraestrutura das Lambdas
   1. TODO: Criar lambda usando terraform `fiap-tech-challenge-users-lambda`
   2. TODO: Criar lambda usando terraform `fiap-tech-challenge-authenticator-lambda`
   3. TODO: Criar lambda usando terraform `fiap-tech-challenge-authorizer-lambda`
8. Deploy das lambdas usando GitHub Actions
9. TODO: Provisionar a infraestrutura do API Gateway
   