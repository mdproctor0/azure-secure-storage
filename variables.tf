variable "location" {
    type            = string
    description     = "Azure region where resources will be deployed"
    default         = "East US"
}

variable "environment" {
    type            = string
    description     = "Apart of the dev environment"
    default         = "dev"
}

variable "resource_group_name" {
    type            = string
    description     = "Name of the Resource Group the storage will be in"
}

variable "storage_account_name" {
    type            = string
    description     = "Name of the Storage"
}