
# Microsoft Partner Solution Kit for Retail


The Microsoft Partner Solution Kit for Retail is an end-to-end solution to drive sales demos, Proof of Concept (POC), workshops, and similar type of engagements with customers. This Partner Solution Kit (PSK) leverages the Analytics End-to-End with Azure Synapse zccelerator which allows partners to quickly implement a pre-built template to deploy Azure Synapse alongside other Azure Services used in this Retail solution.

The Partner Solution Kit for Retail includes the following technical assets:
* 1-Click deploy of Azure Synapse and related services
* Step-by-step deployment guidance
* Reference Architecture
* Retail Analytics Solution assets and artifacts including:
  * Adventure Works sample CSV source files
  * Integration pipelines
  * Staging and multi-dimensional lake databases
  * Retail Analytics Power BI dashboard 
  * Product Recommender model based on PySpark notebook
* Links to learning resources (videos, workshops, and blogs)

## Reference Architecture
![Reference Architecture](https://github.com/jchinchillaMSFT/wwcsu-psk-synapse-retail/blob/4339afd8142772dfbe9b7f5dde5bbe57ba534397/media/SynapseRetailReferenceArchitecture.png)


#
## Deployment Guidance
#

### Step 1: Deploy
Deploy Azure Synapse using the End-to-End Analytics with Azure Synapse deployment accelerator using the Deployt to Azure button below. This deployment accelerator gives you the option to implement the entire reference architecture or choose what workloads you need for your analytics use case. You also have the option to select whether services are accessible via public endpoints or if they are to be accessed only via private endpoints.

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#blade/Microsoft_Azure_CreateUIDef/CustomDeploymentBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-synapse-analytics-end2end%2Fmain%2FDeploy%2FAzureAnalyticsE2E.json/uiFormDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-synapse-analytics-end2end%2Fmain%2FDeploy%2FcreateUiDefinition.json)

You can have more control over the deployment by providing values to optional template parameters in the form of:

```azurecli
az deployment group create --resource-group resource-group-name --template-file ./AzureAnalyticsE2E.bicep --parameters synapseSqlAdminPassword=use-complex-password-here param1=value1 param2=value2...
```

> **Important:** This deployment accelerator is meant to be executed under no interference from Azure Policies that deny certain configurations as they might prevent the its successful completion. Please use a sandbox environment if you need to validate the deployment resulting configuration before you run it against other environments under Azure Policies.

For more details about this 1-Click deploy for the Analytics end-to-end with Azure Synapse accelerator please visit: [Microsoft Docs](https://docs.microsoft.com/en-us/azure/architecture/example-scenario/dataplate2e/data-platform-end-to-end) and the [GitHub repo](https://github.com/Azure/azure-synapse-analytics-end2end).

### Step 2: Grant Storage Access
The solution will automatically grant workspace identity data access to the workspace Data Lake Storage Gen2 account, using the Storage Blob Data Contributor role. To enable other users to use this storage account after you create your workspace, perform these tasks:
*	Assign other users to the Contributor role on workspace.
*	Assign other users the appropriate Synapse RBAC roles using Synapse Studio.
*	Assign yourself and other users to the Storage Blob Data Contributor role on the storage account.

Learn more: [How to set up access control for your Azure Synapse workspace](https://docs.microsoft.com/en-us/azure/synapse-analytics/security/how-to-set-up-access-control?WT.mc_id=Portal-Microsoft_Azure_Synapse)

### Step 3. Execute the Integration Pipelines
The integration pipelines included in the Partner Solution Kit for Retail provide examples of a typical data integration scenario in which data flows in three stages:

* Source data from CSV files are copied from an external source (GitHub) into a raw landing zone in a data lake.
* Data from the raw landing zone is loaded to a staging lake database (adworks)
* Data is transformed into a target database (adworkstarget)

The source CSV file data included in the Partner Solution Kit for Retail was exported from the Adventure Works sample database and are located in the **Sample** folder of this Github Repo.

### Step 4: Deploy the Retail Analytics Power BI Dashboard
Downdload the Power BI .pbix file in **Sample** folder of this GitHub Repo, then open the .pbix file in Power BI Desktop and publish the report to a Power BI workspace.

### Step 5: Connect to a Power BI workspace 
Connect the Power BI workspace by creating a Power BI linked service under the Manage tab in Synapse Studio. Click New and search for the Power BI linked service type. Then, provide a name for the linked service and select the tenant and Power BI workspace you deployed the .pbix file in Step 4.

