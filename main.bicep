param location string = resourceGroup().location

var storageSku = 'Standard_LRS' 

@minLength(3)
@maxLength(24)
param StorageAccountName string = 'bicepdemostgacc001'

resource stg 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name:  
  location: location
  kind: 'Storage'
  sku: {
    name: 'Standard_LRS'
  }
  
}

output storageId string = stg.id


