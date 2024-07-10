# RUNNING

## Preparando o ambiente

- [ ] AWS Academy `Start Lab`
- [ ] Update `~./aws/credentials`
- [ ] AWS cli - `aws sts get-caller-identity`
- [ ] AWS cli - `aws eks update-kubeconfig --region us-east-1 --name tech_challenge_eks_cluster`

## Provisionando a infraestrutura

- [ ] `cd terraform`
- [ ] `make init`
- [ ] `make postgres`
- [ ] `make eks`
- [ ] Criar nodegroup by AWS Console(aguardar até que fique ativo)
- [ ] Criar o hash para o Host do postgres `tech-challenge-db.<ID>.us-east-1.rds.amazonaws.com" | base64`
- [ ] Colar o hash no arquivo `k8s/secret.yaml` da app

## Configuração do Kube Config no Github

> A cada vez que o AWS Academy é iniciado, o kubeconfig é alterado, então é necessário atualizar o kubeconfig no Github, para que o Github Actions consiga se comunicar com o cluster. 

- [ ] Primeiro é necessário configurar o kubeconfig localmente
- [ ] Depois é preciso copiar todo o conteúdo `~/.kube/config` para a variável `KUBECONFIG` no Github da app.