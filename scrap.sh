
# stop running containers
docker ps -q | xargs docker stop

# deletes unused container id's
docker ps -q -a | xargs docker rm

#deletes docker images
docker images -q | xargs docker rmi --force
