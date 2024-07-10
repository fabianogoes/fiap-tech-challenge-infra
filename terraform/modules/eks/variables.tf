variable "account_id" {}

variable "region" {
    default = "us-east-1"
}

variable "vpcId" {
    default = "vpc-051de3cf874ee423c"
}

variable "subnetA" {
    default = "subnet-05a77c2b480be861d"
}

variable "subnetB" {
    default = "subnet-038d0a6cc4d0a4ba3"
}

variable "sgId" {
    default = "sg-0c9b77f074a551f49"
}

variable "nodeName" {
    default = "ng-tech-challenge"
}

variable "accessConfig" {
    default = "API_AND_CONFIG_MAP"
}

variable "policyArn" {
    default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSAdminPolicy"
}