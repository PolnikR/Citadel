using '../../layers/governance-hub/ai-hub-gateway-solution-accelerator/bicep/infra/main.bicep'

// DEV environment parameters
// Add only values that differ from the accelerator defaults or are required for this environment.

// ============================================================================
// BASIC PARAMETERS
// ============================================================================
param environmentName = 'ai-hub-vzdelai-dev'
param location = 'swedencentral'
param tags = {
  'azd-env-name': 'ai-hub-vzdelai-dev'
  Environment: 'Development'
  CostCenter: 'Engineering'
  Owner: ''
  Criticality: 'Low'
  SecurityControl: 'Ignore'
}

// ============================================================================
// RESOURCE NAMES - Assign custom names to different provisioned services
// ============================================================================
param resourceGroupName = 'rg-ai-hub-vzdelai-dev'

// ============================================================================
// MONITORING - Log Analytics configuration
// ============================================================================
param useExistingLogAnalytics = false

// ============================================================================
// NETWORKING PARAMETERS - Network configuration and access controls
// ============================================================================
param useExistingVnet = false

// VNet address space and subnet prefixes
param vnetAddressPrefix = '10.170.0.0/24'
param apimSubnetPrefix = '10.170.0.0/26'
param privateEndpointSubnetPrefix = '10.170.0.64/26'
param functionAppSubnetPrefix = '10.170.0.128/26'

// Services network access configuration
param apimNetworkType = 'External'
param apimV2UsePrivateEndpoint = true
param cosmosDbPublicAccess = 'Disabled'
param eventHubNetworkAccess = 'Enabled'

// ============================================================================
// FEATURE FLAGS - Deploy specific capabilities
// ============================================================================
param enableAPICenter = true

// ============================================================================
// COMPUTE SKU & SIZE - SKUs and capacity settings for services
// ============================================================================
param apimSku = 'Developer'
param apimSkuUnits = 1
param eventHubCapacityUnits = 1
param cosmosDbRUs = 400
param logicAppsSkuCapacityUnits = 1
param apicSku = 'Free'
param keyVaultSkuName = 'standard'

// ============================================================================
// ACCELERATOR SPECIFIC PARAMETERS
// ============================================================================
// AI Foundry instances configuration array
param aiFoundryInstances = [
  {
    name: ''
    location: 'swedencentral'
    customSubDomainName: ''
    defaultProjectName: 'vzdelai-governance-project'
  }
]

// AI Foundry model deployments configuration
param aiFoundryModelsConfig = [
  {
    name: 'MAI-Thinking-1'
    publisher: 'Microsoft AI'
    version: '2026-06-01'
    sku: 'GlobalStandard'
    capacity: 100
    retirementDate: '2099-12-30'
    aiserviceIndex: 0
  }
]
