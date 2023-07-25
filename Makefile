IMAGE_NAME="fialakarel/rawtherapee"

build:
	docker build -t $(IMAGE_NAME) .

build-nc:
	docker build --no-cache --pull -t $(IMAGE_NAME) -f Dockerfile.ubuntu .

push:
	docker push $(IMAGE_NAME)

testrun:
	docker run --rm -it --volume /tmp/.X11-unix:/tmp/.X11-unix --env DISPLAY=:0 --name rawtherapee $(IMAGE_NAME) rawtherapee
