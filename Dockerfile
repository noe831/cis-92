FROM docker.io/ubuntu:20.04

RUN apt update -y && DEBIAN_FRONTEND=noninteractive apt install -y python3-pip tzdata
RUN python3 -m pip install django psycopg2-binary
#RUN chmod +x entrypoint.sh

COPY app/mysite/ /app

WORKDIR /app

ENV DJANGO_ADMIN_USERNAME=test
ENV DJANGO_ADMIN_EMAIL=liliharbottle@gmail.com
ENV DJANGO_SUPERUSER_PASSWORD=test

ENTRYPOINT ["bash"]
#ENTRYPOINT ["/bin/bash"]#["entrypoint.sh"]
CMD ["-c", "./entrypoint.sh"]

#ENV MODE=Debug

EXPOSE 8000