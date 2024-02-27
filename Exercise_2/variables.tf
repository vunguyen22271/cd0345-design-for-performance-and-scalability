# TODO: Define the variable for aws_region
variable "region" {
  description = "The region where to deploy the Lambda function"
  default     = "us-east-1"
}

variable "lambda_function_name" {
  description = "The name of the Lambda function"
  default     = "Udacity-Lambda-Function"
}