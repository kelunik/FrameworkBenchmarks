FROM python:3.6.5

ADD ./yocto_http /yocto_http
ADD ./requirements.txt /yocto_http

WORKDIR /yocto_http

RUN pip3 install -r /yocto_http/requirements.txt

WORKDIR /yocto_http

CMD api_hour -ac hello:Container
