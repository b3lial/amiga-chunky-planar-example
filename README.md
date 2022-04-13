# amiga-chunky-planar-example
Amiga C example to convert chunky buffer to planar and vice versa.
Converter functions written by Morten Eriksen in assembler.

## About
I was looking for a leightweight example on how to convert
chunky/planar buffers. Furthermore, I wanted to embedd it into
my Amiga projects which are cross-compiled via gcc on 
my machine and not on the Amiga themself. I did not find
anything which met these requirements so I created this project.

It is no rocket since: I basically took the assembler code from
Morten Eriksen which provides two function to convert the different
buffer types. Around it, I set up a C environment with some example
code for educational purpose and a makefile.

## Build
There are two ways to compile this project:

* Install gcc and vasm locally to run `make`.
* Install my [amiga build](https://hub.docker.com/r/phobosys/amiga-gcc-builder) 
docker container and run `docker-run.sh`

## Usage
...
