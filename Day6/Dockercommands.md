List of Docker commands 

docker –version
docker pull  -> it will image from repository ( intially whether the image is located on local machine ,after that it will try pull from repository)
docker run  -> it will containers from docker image 
docker ps  -> list of active containers
docker ps -a   - list of container and it will show as stop container also 
docker exec  - > to go inside the container and check the logs of containers 
docker stop  -> It is used to stop the container of the application
docker kill
docker commit
docker history --imagename 
docker login
docker push repositoryname
docker push 11122233345/webappsdocker
>docker tag webappsdocker 11122233345/webappsdocker
docker images   -> it will list of down of docker images on local machine
docker rm  --containername  -> Remove the containers 
docker rmi --imagename      -> It will remove the docker image
docker build -t . dockerfile
docker logs container_name_or_id 
docker infodocker inspect avimanyu786/alpine-with-vim:latest  -imagename
docker history avimanyu786/alpine-with-vim:latest --image 
docker diff nginx-root

Please refer to this offical document :https://docs.docker.com/engine/reference/run/
