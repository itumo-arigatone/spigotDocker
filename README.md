Minecraft plugin development server using docker.

build command.
```sh
docker build -t unkomorasi01/spigot:1.18.1 .
```

Where to put the plugins
```
/minecraft_data/minecraft/plugins
```

copy command memo
```
docker cp {project}/target/*.jar <containerID>:/minecraft_data/minecraft/plugins/
```
