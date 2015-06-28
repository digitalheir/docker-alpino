# Dockerized Alpino

The Dutch language parser [Alpino](www.let.rug.nl/vannoord/alp/Alpino) requires a set of libraries and environment variables that may be different on your machine. This container has everything set up cleanly, coming from ubuntu:14:04.

Based on Alpino 2.15-20723. (http://www.let.rug.nl/~vannoord/alp/Alpino/binary/versions/Alpino-x86_64-linux-glibc2.15-20723-sicstus.tar.gz)

## Usage


```sh
docker run digitalheir/alpino /bin/sh -c "echo ik ben gek op spruitjes | Alpino -parse"
```

