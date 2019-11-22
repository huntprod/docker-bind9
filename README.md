BIND9 in Docker
===============

This repository contains the definition of a Docker Image that
runs a BIND9 name server with a static configuration (probably
bind-mounted into the container).

To run it:

    docker run --restart always -P huntprod/bind9:latest

or, perhaps more usefully:

    docker run --restart always -P \
      -v /path/to/config/dir:/dnz \
      huntprod/bind9:latest

... where /patch/to/config contains a `named.conf` file and all of
the zone definitions you require of your name server.
