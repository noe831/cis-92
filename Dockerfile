#FROM docker.io/httpd

#COPY index.html /usr/local/apache2/htdocs/index.html

FROM docker.io/ubuntu:20.04

RUN apt update -y && DEBIAN_FRONTEND=noninteractive apt install -y python3-pip tzdata
RUN python3 -m pip install django psycopg2-binary

COPY app/mysite/ /app

WORKDIR /app

#make entrypoint file executable
RUN chmod +x entrypoint.sh

#ENV MODE=Debug

EXPOSE 8000

# entrypoint is bash
ENTRYPOINT ["bash"]
# cmd is entrypoint shell script
CMD ["-c", "./entrypoint.sh"]