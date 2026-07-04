output "static_website_url" {
  description = "The URL of the static website."
  value       = azurerm_storage_account.web.primary_web_endpoint
}
