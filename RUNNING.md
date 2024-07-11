# RUNNING

## Preparando o ambiente

- [ ] AWS Academy `Start Lab`
- [ ] Update `~./aws/credentials`
- [ ] AWS cli - `aws sts get-caller-identity`
- [ ] AWS cli - `aws eks update-kubeconfig --region us-east-1 --name tech_challenge_eks_cluster`
- [ ] Atualizar as secrets do github actions das apps:
  - `AWS_ACCESS_KEY_ID`
  - `AWS_SECRET_ACCESS_KEY`
  - `AWS_SESSION_TOKEN`
  - `AWS_REGION`
  - `KUBECONFIG`
     
```
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_SESSION_TOKEN=
export AWS_DEFAULT_REGION=us-east-1

```

> Referencia importante para possíveis erros: 
> - [How can I troubleshoot the AWS STS error “the security token included in the request is expired” when using the AWS CLI to assume an IAM role?](https://repost.aws/knowledge-center/sts-iam-token-expired)

## Provisionando a infraestrutura

- [ ] `cd terraform`
- [ ] `make init`
- [ ] `make eks`
  - Criar nodegroup by AWS Console(aguardar até que fique ativo)
- [ ] `make postgres`
  - Criar o hash para a connection string do postgres `tech-challenge-db.<ID>.us-east-1.rds.amazonaws.com" | base64`
  - Colar o hash no arquivo `k8s/secret.yaml` da app
- [ ] `make authorizer`
  - Deploy ultima versão do código usando o repositório: https://github.com/fabianogoes/fiap-tech-challenge-authorizer-lambda
- [ ] `make gateway`
  - Varificar a referência com a `lambda` do `authorizer`

## Configuração do Kube Config no Github

> A cada vez que o AWS Academy é iniciado, o kubeconfig é alterado, então é necessário atualizar o kubeconfig no Github, para que o Github Actions consiga se comunicar com o cluster. 

- [ ] Primeiro é necessário configurar o kubeconfig localmente: `aws eks update-kubeconfig --region us-east-1 --name tech_challenge_eks_cluster`
- [ ] Depois é preciso copiar todo o conteúdo `~/.kube/config` para a variável `KUBECONFIG` no Github da app.
