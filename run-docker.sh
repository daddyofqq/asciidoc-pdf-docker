#! /bin/bash
docker run --rm --user `id -u` -v `pwd`:/docs -i -t adoc
