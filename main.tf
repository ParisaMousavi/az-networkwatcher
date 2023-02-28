
resource "azurerm_network_watcher" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags = merge(
    var.additional_tags,
    {
      created-by = "iac-tf"
    },
  )
}
