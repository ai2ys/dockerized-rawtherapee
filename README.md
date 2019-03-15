# RawTherapee

RawTherapee Docker image

## Usage

### RawTherapee GUI

    docker run \
        --detach \
        --name rawtherapee \
        --volume /tmp/.X11-unix:/tmp/.X11-unix \
        --env DISPLAY=$DISPLAY \
        --volume /outside/data:/inside/data:rw \
        fialakarel/rawtherapee \
        rawtherapee


### RawTherapee CLI

    docker run \
        --rm -it \
        --name rawtherapeecli \
        --volume /tmp/.X11-unix:/tmp/.X11-unix \
        --env DISPLAY=$DISPLAY \
        --volume /outside/data:/inside/data:rw \
        fialakarel/rawtherapee \
        rawtherapee-cli --help
