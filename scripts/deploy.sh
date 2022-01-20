STORAGE_ACCOUNT_NAME="rglandstatic"

az storage blob upload-batch \
    --source wwwroot \
    --destination '$web' \
    --account-name $STORAGE_ACCOUNT_NAME