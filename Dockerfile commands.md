1. `FROM [image]`
from which image

2. `MAINTAINER [fname] [lname] <email>`
who is maintaining the dockerfile

3. `RUN`
run a command through a shell

4. `ADD [file] [image_localtion]`
add a file to image at xx location

4.1 `ADD project.tar.gz /install/`
uncompress .tar to localtion /install

4.2 `ADD https://www.aaa.com/download/project.rpm /project`
download from url to /project/

5. `ENV DB_HOST = db.production.example.com`
sets env variables all through the docker file

6. `ENTRYPOINT`, `CMD`

7. `EXPOSE 8080`
map a port to a container

8. `VOLUME`

9. `WORKDIR`
sets working directory, like `cd` 

10. `USER`