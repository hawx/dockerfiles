# Dockerfiles

## alexandria-web

Make sure `alexandria-web/settings.yml` exists with your settings, then

``` bash
$ docker build -t $USER/alexandria alexandria-web
$ docker run -v /app/alexandria --name alexandria-data busybox
$ docker run -d -p 3000:3000 --volumes-from alexandria-data hawx/alexandria
```

## echo

``` bash
$ docker build -t $USER/echo-builder echo/build
$ docker run --rm -v $(pwd)/echo/run:/out $USER/echo-builder
$ docker build -t $USER/echo echo/run
$ docker run -d -p 8080:80 $USER/echo
```

## nginx

``` bash
$ docker build -t $USER/nginx nginx
$ docker run -d -p 80:80 -p 443:443 -v /etc/nginx:/etc/nginx \
    -v /var/log/nginx $USER/nginx
```

## phemera

Make sure `phemera/run/settings.toml` exists with your settings, then

``` bash
$ docker build -t $USER/phemera-builder phemera/build
$ docker run --rm -v $(pwd)/phemera/run:/target $USER/phemera-builder
$ docker build -t $USER/phemera phemera/run
$ docker run -v /data --name phemera-data busybox
$ docker run -d -p 8080:80 --volumes-from phemera-data -v /etc/ssl/certs:/etc/ssl/certs $USER/phemera
```