# data "azurerm_subscriptions" "subs" {
# }

# # data "azurerm_resource_group" "rgroups" {
# # }


# output "available_subscriptions" {
#   value = data.azurerm_subscriptions.subs.subscriptions
# }

variable myvariable {
    default = true
}

variable "myrg" {
    description = "enter resource group"
    default = "rg-app551-eastus"
}


output "name" {
    value = var.myvariable
}

# output "list_rgs" {
#     value = data.azurerm_resource_group.rgroups
# } 

data "azurerm_resources" "data_resources" {
    resource_group_name = var.myrg
}

output "available_subscriptions" {
    value = data.azurerm_resources.data_resources
}

