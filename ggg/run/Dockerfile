FROM       scratch
MAINTAINER Joshua Hawxwell <m@hawx.me>

ADD        settings.toml /settings.toml
ADD        ggg /ggg

EXPOSE     80
VOLUME     /data
VOLUME     /opt/git
CMD        ["--port=80"]
ENTRYPOINT ["/ggg"]
