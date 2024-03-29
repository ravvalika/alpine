FROM alpine:3.10.2
RUN apk update
RUN apk add --no-cache \
alsa-lib \
curl \
expat \
gmp \
gnutls \
jasper \
jpeg \
lame \
lcms2 \
libass \
libbz2 \
libdrm \
libffi \
libgcc \
libjpeg-turbo \
libogg \
libpciaccess \
librtmp \
libstdc++ \
libtasn1 \
libtheora \
libva \
libvorbis \
libvpx \
libx11 \
libxau \
libxcb \
libxdamage \
libxdmcp \
libxext \
libxfixes \
libxshmfence \
libxxf86vm \
mesa-gl \
mesa-glapi \
nettle \
openjdk8-jre \
opus \
p11-kit \
sdl \
ttf-dejavu \
v4l-utils-libs \
x264-libs \
x265 \
xvidcore && \
echo "**** installed all pending pacthes ****"
COPY pom.xml /tmp/
WORKDIR /tmp/
RUN mvn package
FROM openjdk:8-jre-alpine
