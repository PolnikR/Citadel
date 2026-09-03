using '../../layers/governance-hub/ai-hub-gateway-solution-accelerator/bicep/infra/main.bicep'

// DEV environment parameters
// Add only values that differ from the accelerator defaults or are required for this environment.

// BASIC PARAMETERS
param environmentName = 'ai-hub-vzdelai-dev'
param location = 'swedencentral'
param resourceGroupName = 'rg-ai-hub-vzdelai-dev'
param tags = {
  'azd-env-name': 'ai-hub-vzdelai-dev'
  Environment: 'Development'
  CostCenter: 'Engineering'
  Owner: ''
  Criticality: 'Low'
  SecurityControl: 'Ignore'
}

// COMPUTE SKU & SIZE
param apimSku = 'Developer'
param apimSkuUnits = 1
param eventHubCapacityUnits = 1
param cosmosDbRUs = 400
param logicAppsSkuCapacityUnits = 1
param apicSku = 'Free'
param keyVaultSkuName = 'standard'

// PARAMETER FILE STRATEGY
param useExistingLogAnalytics = false
param enableAPICenter = true

// NETWORKING
param useExistingVnet = false
param vnetName = 'vnet-7cctcvzrj3ubi'
param vnetAddressPrefix = '10.170.0.0/24'
param apimSubnetName = 'snet-apim'
param apimSubnetPrefix = '10.170.0.0/26'
param privateEndpointSubnetName = 'snet-private-endpoint'
param privateEndpointSubnetPrefix = '10.170.0.64/26'
param functionAppSubnetName = 'snet-functionapp'
param functionAppSubnetPrefix = '10.170.0.128/26'
param apimNsgName = 'nsg-apim-7cctcvzrj3ubi'
param privateEndpointNsgName = 'nsg-pe-7cctcvzrj3ubi'
param functionAppNsgName = 'nsg-functionapp-7cctcvzrj3ubi'
param apimRouteTableName = 'rt-apim-7cctcvzrj3ubi'
param foundryNetworkInjectionEnabled = false
param apimNetworkType = 'External'
param apimV2UsePrivateEndpoint = true
param cosmosDbPublicAccess = 'Disabled'
param eventHubNetworkAccess = 'Enabled'

// FEATURE FLAGS
// Add DEV-specific feature flags here.

// AI FOUNDRY / MODELS
// Add DEV-specific Foundry and model configuration here.
