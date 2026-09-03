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
  SecurityControl: 'Ignore'
}

// COMPUTE SKU & SIZE
param apimSku = 'Developer'
param apimSkuUnits = 1
param eventHubCapacityUnits = 1

// NETWORKING
// Add DEV-specific networking parameters here.

// FEATURE FLAGS
// Add DEV-specific feature flags here.

// AI FOUNDRY / MODELS
// Add DEV-specific Foundry and model configuration here.
