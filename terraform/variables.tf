variable "location" {
  description = "The Azure Region in which all resources should be created."
  type        = string
  default     = "centralindia"
}

variable "app_name" {
  description = "The name of the Azure Static Web App."
  type        = string
  default     = "assetpilot-web-admin"
}
