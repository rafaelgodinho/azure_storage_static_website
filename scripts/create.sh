RESOURCE_GROUP="mystaticsite"
LOCATION="westus2"
STORAGE_ACCOUNT_NAME="rglandstatic"

az group create \
    --name $RESOURCE_GROUP \
    --location $LOCATION

az storage account create \
    --resource-group $RESOURCE_GROUP \
    --name $STORAGE_ACCOUNT_NAME \
    --location $LOCATION \
    --https-only false \
    --sku Standard_LRS \
    --kind StorageV2 \

az storage blob service-properties update \
    --account-name $STORAGE_ACCOUNT_NAME \
    --static-website \
    --404-document 404.html \
    --index-document index.html

az storage account show \
    --name $STORAGE_ACCOUNT_NAME \
    --resource-group $RESOURCE_GROUP \
    --query "primaryEndpoints.web" \
    --output tsv