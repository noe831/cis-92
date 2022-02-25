#FROM docker.io/httpd

#COPY index.html /usr/local/apache2/htdocs/index.html

FROM docker.io/ubuntu:20.04

RUN apt update -y && DEBIAN_FRONTEND=noninteractive apt install -y python3-pip tzdata
RUN python3 -m pip install django psycopg2-binary

COPY app/mysite/ /app

WORKDIR /app

#ENV MODE=Debug

ENTRYPOINT ["/bin/bash"]#["entrypoint.sh"]
CMD ["-c", "python3 ./manage.py runserver 0.0.0.0:8000"]
#"ls -la"]

#USER 

EXPOSE 8000