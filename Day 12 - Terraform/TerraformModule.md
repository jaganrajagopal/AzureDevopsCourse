# Terraform with Azure - Beginner's Cheat Sheet

A quick reference guide for beginners to get started with Terraform on Azure.

## Table of Contents
- [Introduction](#introduction)
- [Installing Terraform](#installing-terraform)
- [Setting Up Azure](#setting-up-azure)
- [Terraform Basics](#terraform-basics)
- [Common Terraform Commands](#common-terraform-commands)
- [Sample Terraform Configuration for Azure](#sample-terraform-configuration-for-azure)
- [Best Practices](#best-practices)
- [Troubleshooting](#troubleshooting)
- [Additional Resources](#additional-resources)

## Introduction
[Terraform](https://www.terraform.io/) is an open-source infrastructure as code software tool created by HashiCorp. It allows users to define and provision a cloud infrastructure using a high-level configuration language.

## Installing Terraform
Download and install Terraform from the [official website](https://www.terraform.io/downloads.html). Follow the instructions for your operating system to get Terraform up and running.

## Setting Up Azure
1. **Create an Azure Account**: Sign up or log in to your [Azure account](https://portal.azure.com/).
2. **Install Azure CLI**: Follow the [installation guide](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) for your system.
3. **Configure Azure CLI**: Run `az login` and follow the login prompts.

## Terraform Basics
- **Terraform File**: Files ending with `.tf`.
- **Provider**: Plugins for specific platforms (e.g., Azure).
- **Resource**: Infrastructure component (e.g., VMs, network interfaces).

## Common Terraform Commands
- `terraform init`: Initialize a Terraform working directory.
- `terraform plan`: Create an execution plan.
- `terraform apply`: Apply the changes required to reach the desired state of the configuration.
- `terraform destroy`: Destroy the Terraform-managed infrastructure.

## Sample Terraform Configuration for Azure
Basic example to create a resource group:
```hcl
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "East US"
}

