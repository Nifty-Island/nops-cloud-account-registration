variable "tags" {
  description = "Tags to be applied to the resource"
  default     = {}
  type        = map(any)
}

variable "ReportName" {
  type        = string
  default     = "nopsbilling-daily-gzip"
  description = "nOps daily generated report name"
}

variable "s3prefix" {
  type        = string
  default     = "nOpsbilling"
  description = "nOps daily generated reports folder prefix"
}

variable "BucketName" {
  type        = string
  default     = "nopsbucketforcostusagereports"
  description = "s3 bucket name for nOps daily cost usage reports (CUR)."
}

variable "nOpsApiKey" {
  type        = string
  sensitive   = true
  description = "nOps api key to register aws accounts"
}

variable "nOpsPrivateKey" {
  type        = string
  sensitive   = true
  description = "nOps private key to generate signature for api request, It must be single line string (optional)."
}

variable "org_root_id" {
  type        = list(string)
  description = "AWS Organization root id."
}

