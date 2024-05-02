provider "aws" {
    region = var.region
}

data "archive_file" "fiap-tech-challenge-authorizer-lambda" {
    type        = "zip"
    source_dir  = "${path.module}/python/"
    output_path = "${path.module}/python/fiap-tech-challenge-authorizer-lambda.zip"
}

resource "aws_lambda_function" "fiap-tech-challenge-authorizer-lambda" {
    filename        = "${path.module}/python/fiap-tech-challenge-authorizer-lambda.zip"
    function_name   = "fiap-tech-challenge-authorizer-lambda"
    role            = "arn:aws:iam::${var.account_id}:role/LabRole"
    handler         = "lambda_function.lambda_handler"
    runtime         = "python3.10"
}