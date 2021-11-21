FROM ghcr.io/davidkern/tools-base:1.1.0

USER root
RUN --mount=type=bind,src=build,target=/build cd /build && ./build.sh

USER user
WORKDIR /host
CMD [ "/usr/bin/zsh" ]
