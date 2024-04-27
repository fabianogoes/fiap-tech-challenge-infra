variable "account_id" {}

variable "region" {
    default = "us-east-1"
}

variable "vpcId" {
    default = "vpc-08b1fbde208e597a2"
}

variable "subnetA" {
    default = "subnet-0f506ad7b8b92daaf"
}

variable "subnetB" {
    default = "subnet-01f6f5db452aa17c3"
}

variable "sgId" {
    default = "sg-0f9b4e7ef3834c952"
}

variable "nodeName" {
    default = "tech-challenge-node-group"
}

variable "accessConfig" {
    default = "API_AND_CONFIG_MAP"
}

variable "policyArn" {
    default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSAdminPolicy"
}