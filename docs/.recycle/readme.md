# Documentation Servers For All

This is a documentation server template. using mkdocs. and markdown. and docker.

<img src="/docs/assets/imagery/screenshot.png">

too lazy to write instructions. will use bard for that later.

it uses mkdocs and markdown files.

the existing content is open source content from a real project off the internet.

i just made it look good and be dockerizable and stuff

## theming

open up the mkdocs file. look in there. it's alot of themes.

https://mkdocs.github.io/mkdocs-bootswatch/

read that. it shows the options.

## run using docker

just run "start.bash". 

you'll need

* docker
* docker compose

it'll do all teh magic.

access using your browser

```
http://localhost:8888
```

## run from source

```
mkdocs build
```

you'll need to install pip dependencies. 

yawn. another day i'll do that. lol.

just use docker.

## do work

document your projects. share the links.

share with the universe.

amazing things will happen.

## dockerhub pushing

if you want to push the project to dockerhub.

just update compose.yaml and change the image.

then run 

```
docker-compose push
```

get your dockerhub password ready.
