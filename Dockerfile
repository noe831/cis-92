FROM docker.io/httpd

COPY index.html /usr/local/apache2/htdocs/index.html

#FROM docker.io/ubuntu:20.04

#RUN apt update -y && DEBIAN_FRONTEND=noninteractive apt install -y python3-pip tzdata
#RUN python3 -m pip install django

#COPY apt/mysite/ /app

#WORKDIR /app
#ENV MODE=Debug

#ENTRYPOINT ["/bin/bash"]#["entrypoint.sh"]
#CMD ["-c", "ls -la"]

#EXPOSE 8000