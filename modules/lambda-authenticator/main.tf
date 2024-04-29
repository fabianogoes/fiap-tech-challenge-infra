provider "aws" {
    region = var.region
}

data "archive_file" "fiap-tech-challenge-authenticator-lambda" {
    type        = "zip"
    source_dir  = "${path.module}/python/"
    output_path = "${path.module}/python/fiap-tech-challenge-authenticator-lambda.zip"
}

resource "aws_lambda_function" "fiap-tech-challenge-authenticator-lambda" {
    filename        = "${path.module}/python/fiap-tech-challenge-authenticator-lambda.zip"
    function_name   = "fiap-tech-challenge-authenticator-lambda"
    role            = "arn:aws:iam::${var.account_id}:role/LabRole"
    handler         = "lambda_function.lambda_handler"
    runtime         = "python3.10"
}