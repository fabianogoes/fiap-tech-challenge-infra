variable "account_id" {}

variable "region" {
    default = "us-east-1"
}

variable "vpcId" {
    default = "vpc-0941b7303fbfbd668"
}

variable "subnetA" {
    default = "subnet-099069f6aa7341bac"
}

variable "subnetB" {
    default = "subnet-021aa3d3aa7b1fc86"
}

variable "sgId" {
    default = "sg-0d7a2a751b1fc8194"
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