docker-compose -f docker-compose.build.yaml build

# -------------

# Tag:
docker tag orders-microservice:latest aletrustcommerceregistry.azurecr.io/orders-microservice:latest
docker tag products-microservice:latest aletrustcommerceregistry.azurecr.io/products-microservice:latest
docker tag users-microservice:latest aletrustcommerceregistry.azurecr.io/users-microservice:latest
docker tag apigateway:latest aletrustcommerceregistry.azurecr.io/apigateway:latest
docker tag ecommerce-mysql:latest aletrustcommerceregistry.azurecr.io/ecommerce-mysql:latest
docker tag ecommerce-postgres:latest aletrustcommerceregistry.azurecr.io/ecommerce-postgres:latest
docker tag ecommerce-mongodb:latest aletrustcommerceregistry.azurecr.io/ecommerce-mongodb:latest

# ------------

# Push:
az acr login --name aletrustcommerceregistry

docker push aletrustcommerceregistry.azurecr.io/orders-microservice:latest
docker push aletrustcommerceregistry.azurecr.io/products-microservice:latest
docker push aletrustcommerceregistry.azurecr.io/users-microservice:latest
docker push aletrustcommerceregistry.azurecr.io/apigateway:latest
docker push aletrustcommerceregistry.azurecr.io/ecommerce-mysql:latest
docker push aletrustcommerceregistry.azurecr.io/ecommerce-postgres:latest
docker push aletrustcommerceregistry.azurecr.io/ecommerce-mongodb:latest


