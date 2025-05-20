##################
# images         
##################
docker images
docker pull image_name:tag
# delete images
docker rmi [image_id]
# search for images
docker search [image]
# build an image with Dockerfile
docker build -t [image_tag] .

###################
# run a container 
###################
# create a container from an image, ti: terminal interactive
docker run -ti ubuntu:latest
# gives the container a name
docker run --name debugDocker -d ubuntu bash -c "lose /etc/password"
# remove container after exit
docker run --rm -ti sleep 5
# run a command
docker run -ti clickhouse/clickhouse-server@sha256:15d824df096e7a9fe1b23b24421422b44011b548f811b62c00ae640718b1c756 bash -c "clickhouse --version"
# run two commands
docker run -ti ubuntu bash -c "sleep 3; echo all done"
# detach a container and leave it running in the backgroup, `-d` detatch
docker run -d -ti ubuntu bash
# stop a running container
docker kill wizardly_wilson
# attach to a container running in the backgroud
docker attach [container_name]
# attach to a running container
docker exec -ti clickhouse-ginger1 bash
# execute a command in a running container
docker exec -it [container_id] [CMD] 
# look at logs of a container
docker logs debugDocker


######################
# inspect            
######################
# list all running containers
docker ps
# check all containers
docker ps -a
# check last exited container
docker ps -l
# remove a container
docker rm wizardly_wilson

######################
# volume            
######################

# shared volume between host and container
docker run -ti -v /home/xiatong/sharedVolumnHostContainer:/shared-folder ubuntu bash
ls /shared-folder/
touch /shared-folder/my-data

# share volume among containers
docker run --rm -ti \
    --volume /shared-data \
    --name one \
    --entrypoint bash \
    ubuntu
echo hello > /shared-data/data.txt
# in a new terminal
docker run --rm -ti \
    --volumes-from one \
    --name two \
    --entrypoint bash \
    ubuntu
ls shared-data/
echo more > /shared-data/more-data.txt
# exit container one
# spin up another container
docker run --rm -ti \
    --volumes-from two \
    --name three \
    --entrypoint bash \
    ubuntu
