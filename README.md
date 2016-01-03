# Docker configuration for a webtrees container

> This configuration is based on https://github.com/tutumcloud/lamp

1. [Install Docker](https://docs.docker.com/). 
2. Download this [Dockerfile] to your docker subfolder, e.g.<br>
   `~/docker`
Download Edit `Dockerfile` and rebuild:
```bash
docker build -t mar10/webtrees .
```

Edit `Dockerfile` and rebuild:
```bash
docker build -t mar10/webtrees .
```

```bash
$ docker run -p 80:8080 mar10/webtrees
```

Now start a new container from the image:
```bash
$ docker run -p 80:8080 mar10/webtrees
```

and open this URL in your browser `http://localhost:8080/webtrees/`.

You should see the 


### Debugging and extending

Edit `Dockerfile` and rebuild:
```bash
docker build -t mar10/webtrees .
```

Open a terminal on the running container:
Find out the container ID 
```bash
$ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED              STATUS              PORTS                            NAMES
b202ecd3a245        mar10/webtrees      "/run.sh"           About a minute ago   Up About a minute   3306/tcp, 0.0.0.0:8080->80/tcp   amazing_ride
$ 
```
and run bash there
```bash
$ docker exec -i -t b202ecd3a245 bash
```
