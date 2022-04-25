FROM ubuntu:16.04


USER ContainerUser

WORKDIR /app

FROM python:3.8

ADD main.py .

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt
#RUN pip install requests pandas


CMD ["python", "./main.py"]