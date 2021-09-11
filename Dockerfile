# Use an official Python runtime as a base image
FROM python:3.6.5-slim-stretch

MAINTAINER Enrico Yang <enrico.j.yang@gmail.com>

# Set Chinese source of pip
RUN mkdir .pip

RUN echo "[global] && \
        index-url = http://pypi.douban.com/simple \
        [install] \
        trusted-host = pypi.douban.com" > .pip/pip.conf

# Set the working directory to /app
WORKDIR /app

# copy requirements.txt for pip to install nessesary packages
COPY requirements.txt /app

# 备份原始文件
#RUN cp /etc/apk/repositories /etc/apk/repositories.bak && \
# 修改为国内镜像源
#echo "http://mirrors.aliyun.com/alpine/v3.8/main/" > /etc/apk/repositories
#
#RUN \
#    echo "==> Install lxml binding ..."   && \
#    apk update && \
#    apk add --no-cache gcc musl-dev libxslt-dev

# Install any needed packages specified in requirements.txt
RUN \
    echo "==> Install behave and related stuff..."   && \
    pip3 install --no-cache-dir -r requirements.txt
#
#RUN \
#    echo "==> Install ffmpeg and related stuff..."   && \
#    apk add yasm ffmpeg

# Copy the current directory contents into the container at /app
COPY . /app

# Run behave when the container launches
ENTRYPOINT ["behave"]