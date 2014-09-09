# Dockerfiles

## alexandria-web

Make sure `alexandria-web/settings.yml` exists with your settings, then

``` bash
$ make alexandria-web
$ docker run -v /app/alexandria --name alexandria-data busybox
$ docker run -d -p 3000:3000 --volumes-from alexandria-data hawx/alexandria
```

## echo

``` bash
$ make echo
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
$ make phemera
$ docker run -v /data --name phemera-data busybox
$ docker run -d -p 8080:80 --volumes-from phemera-data \
    -v /etc/ssl/certs:/etc/ssl/certs $USER/phemera
```

## ggg

Make sure `ggg/run/settings.toml` exists with your settings, then

``` bash
$ make ggg
$ docker run -v /data --name ggg-data busybox
$ docker run -d -p 8080:80 --volumes-from ggg-data -v /opt/git:/opt/git \
    -v /etc/ssl/certs:/etc/ssl/certs $USER/ggg
```

__ggg__ will serve the public git repos in `/opt/git` over http, private repos
must be accessed by ssh which must be managed separately.
