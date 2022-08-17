---
description: The Azure Database Migration Service (DMS) is designed to streamline the process of migrating on-premises databases to Azure. DMS will simplify the migration of existing on-premises SQL Server and Oracle databases to Azure SQL Database, Azure SQL Managed Instance or Microsoft SQL Server in an Azure Virtual Machine. This template would deploy an instance of Azure Database Migration service, an Azure VM with SQL server installed on it which will act as a Source server with pre created database on it and a Target Azure SQL DB server which will have a pre-created schema of the database to be migrated from Source to Target server. The template will also deploy the required resources like NIC, vnet etc for supporting the Source VM, DMS service and Target server.
page_type: sample
products:
- azure
- azure-resource-manager
urlFragment: azure-database-migration-service
languages:
- json
---
# Migrate to Azure SQL database using Azure DMS

[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2Fquickstarts%2Fmicrosoft.datamigration%2Fazure-database-migration-service%2Fazuredeploy.json)

For more details about the service please follow the link https://azure.microsoft.com/services/database-migration/

The above template will deploy a resource group with the below resources in your subscription.
1) An Azure Database Migration Service
2) A Windows 2016 server VM with SQL server installed with a pre-created database on the server.
3) A Target Azure SQL database server with pre-created schema of the source database on the target server.
4) A virtual network to which the source and DMS service will be connected.

Using the above resources you can connect to source and target servers, select the databases to migrate and run an end-to-end migration.

`Tags: Microsoft.Compute/virtualMachines, extensions, SqlIaaSAgent, CustomScriptExtension, Microsoft.DataMigration/services, projects, Microsoft.Network/networkInterfaces, Microsoft.Network/networkSecurityGroups, Microsoft.Network/publicIPAddresses, Microsoft.Network/virtualNetworks, subnets, Microsoft.Storage/storageAccounts, Microsoft.Sql/servers, databases, firewallrules`
