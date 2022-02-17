FROM docker.io/httpd

COPY index.html /usr/local/apache2/htdocs/index.html

#FROM docker.io/ubuntu:20.04

#RUN apt update -y && apt install -y python3-pip tzdata
#RUN python3 -m pip install django

#COPY apt/ /app

#WORKDIR /app
#ENV MODE=Debug

#ENTRYPOINT ["/bin/bash"]
#CMD ["-c", "ls -la"]

#EXPOSE 8000