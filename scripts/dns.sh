RESOURCE_GROUP="mystaticsite"
STORAGE_ACCOUNT_NAME="rglandstatic"
DOMAIN="static.rg.land"

az storage account update \
   --resource-group $RESOURCE_GROUP \
   --name $STORAGE_ACCOUNT_NAME \
   --custom-domain $DOMAIN \
   --use-subdomain false