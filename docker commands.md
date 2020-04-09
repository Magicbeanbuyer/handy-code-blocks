1. to look at docker images
`docker images`

2. to create a container from an image, ti: terminal interactive
`docker run -ti ubuntu:latest`

2.1 `--name` gives the container a name
`docker run --name debugDocker -d ubuntu bash -c "lose /etc/password"`

2.2 `--rm` remove container after exit
`docker run --rm -ti sleep 5`

2.3 to do two commands sequentially
`docker run -ti ubuntu bash -c "sleep 3; echo all done"`

2.4 to detach a container and leave it running in the backgroup, `-d` detatch
`docker run -d -ti ubuntu bash`

2.5 `--memory` maximum allowed memory, `--cpu-shares` / `--cpu-quota`

3. to list all running containers
`docker ps`

3.1 to check all containers
`docker ps -a`

3.2 to check last exited container
`docker ps -l`

4. to remove a container
`docker rm wizardly_wilson`

5. to commit a image
`docker commit [container_id]`

6. to tage a image
`docker tag [sha256_id] [image_tag]`

7. to commit & tag in one go
`docker commit [container_name] [image_tag]`

8. to stop a running container
`docker kill wizardly_wilson`

9. to delete images
`docker rmi [image_id]`

10. to search for images
`docker search [image]`

11. to attach to a container running in the backgroud
`docker attach [container_name]`

11.1 to leave a container but let it running
`ctrl + p`

12. attach to a running container
`docker exec -ti pensive_meitner bash`

13. to look at logs of a container
`docker logs debugDocker`

14. to build an image with Dockerfile
`docker build -t [image_tag] .`

15. shared volume between host and container
```
docker run -ti -v /home/xiatong/sharedVolumnHostContainer:/shared-folder ubuntu bash
ls /shared-folder/
touch /shared-folder/my-data
```

15.1 share volume among containers
```
docker run --rm -ti -v /shared-data ubuntu bash
touch hello > /shared-data/data-file
```
in a new terminal
```
docker run --rm -ti --volumes-from recursing_goldberg ubuntu bash
ls shared-data/
echo more > /shared-data/more-data
```
exit ORIGINAL container
spin up another container
```
docker run --rm -ti --volumes-from xenodochial_elbakyan ubuntu bash
```
