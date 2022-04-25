FROM ubuntu:16.04


USER ContainerUser

WORKDIR "C:\\Users\\zakar\\OneDrive\\Desktop\\Docker_Tutorial"

FROM python:3.8

ADD main.py .

RUN pip install requests pandas


CMD ["python", "./main.py"]