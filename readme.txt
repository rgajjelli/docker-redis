
##### Generic docker commads #####
docker build -t redis:latest .
docker run -itd -p 6379:6379 redis:latest /bin/bash redis
docker exec -it 7c3d9f10b644 /bin/bash

##########################################
docker-compose -f docker-compose.yaml up &
##########################################ßß

# If you want to expose only 6379 then, use as
ports:
  - "6379:6379"

# If you want to give control to docker  then
ports:
  - "6379"

## scale up
docker-compose scale redis=10
