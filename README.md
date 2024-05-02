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

## Entregável

### Dando continuidade ao desenvolvimento do software para a lanchonete, teremos as seguintes melhorias e alterações:

- [x] 1. Implementar um API Gateway e um function serverless para autenticar o cliente com base no CPF:
    - [ ] a. Integrar ao sistema de autenticação para identificar o cliente.
- [x] 2. Implementar as melhores práticas de CI/CD para a aplicação, segregando os códigos em repositórios, por exemplo:
    - [x] 2.a - repositório para o Lambda -> https://github.com/fabianogoes/fiap-tech-challenge-authorizer-lambda
    - [x] 2.b - repositório para sua infra Kubernetes com Terraform -> https://github.com/fabianogoes/fiap-tech-challenge-cluster-eks-terraform
    - [x] 2.c - repositório para sua infra banco de dados gerenciaveis com Terraform -> https://github.com/fabianogoes/fiap-tech-challenge-rds-postgres-terraform
    - [x] 2.d - repositório para sua aplicação que é executada no Kubernetes -> https://github.com/fabianogoes/fiap-tech-challenge-restaurant-api
- [x] 3. Os repositórios devem fazer deploy automatizado na conta da nuvem utilizando actions. As branchs main/master devem ser protegidas não permitindo commits direto. Sempre utilize pull request.
- [ ] 4. Melhorar a estrutura do banco de dados escolhido, documentar seguindo os padrões de modelagem de dados e justificar a escolha do banco de dados.
- [x] 5. Você tem a liberdade para escolher qual a infra de nuvem desejar, mas terá de utilizar os serviços serverless: functions (AWS Lamba, Azure functions ou Google Functions, por exemplo), banco de dados gerenciáveis (AWS RDS, Banco de Dados do Azure ou Cloud SQL no GCP, por exemplo), sistema de autenticação (AWS Cognito, Microsoft AD ou Google Identity platform no GCP, por exemplo).

### OS ARTEFATOS DE ENTREGA SÃO:

- [ ]  PDF com o link do **repositório** público ou com acesso dos docentes. Esse repositório deve conter todos os códigos (inclusive o Terraform e Cl/CD actions)
- [ ]  PDF com a URL de um **video** com a explicação da infraestrutura utilizada na nuvem escolhida.
Nesse vídeo, o(a) estudante deverá explicar qual a função do serviço e como ele foi montado.

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
7. Provisionar a infraestrutura das Lambdas `make lambdas`
8. Deploy das lambdas usando GitHub Actions
9. TODO: Provisionar a infraestrutura do API Gateway

## TODO F3

- [x] Implementar `API Gateway` com Authorizer JWT
- [x] Implementar `Lambda Authorizer` usando Python e JWT
- [x] Implementar IaaC usando `Terraform` para provissionar a Infra na AWS
- [x] Implementar `RDS` para o banco de dados
- [x] Implementar `CI/CD` usando `GitHUb Actions` fazer o deploy da API e do Authorizer
- [x] Documentar a `arquitetura`
- [ ] Documentar o `modelo de dados`
- [ ] Gravar o `vídeo` de explicação da infraestrutura
- [ ] Criar `PDF` com os links dos repositórios e do vídeo
   
## Referências importantes

- [NoSQL Capabilities in PostgreSQL](https://medium.com/@dudkamv/nosql-capabilities-in-postgresql-9eec822886d9#:~:text=PostgreSQL%20as%20a%20Relational%20and%20NoSQL%20Database&text=This%20dual%20capability%20is%20largely,integrity%20of%20a%20relational%20database)
