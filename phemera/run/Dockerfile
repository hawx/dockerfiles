FROM       scratch
MAINTAINER Joshua Hawxwell <m@hawx.me>

ADD        settings.toml /settings.toml
ADD        phemera /phemera

EXPOSE     80
VOLUME     /data
CMD        ["--port=80"]
ENTRYPOINT ["/phemera"]
