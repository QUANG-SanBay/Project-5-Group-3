FROM python:3.11-bullseye
ENV PYTHONUNBUFFERED 1

# Cài đặt các gói hệ thống cần thiết, bao gồm lsb-release để xác định phiên bản Debian
RUN apt-get update && apt-get install -y \
    curl \
    apt-transport-https \
    gnupg \
    lsb-release \
    unixodbc-dev

# Thêm repository và cài đặt msodbcsql18 (sử dụng "bullseye")
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
    curl https://packages.microsoft.com/config/debian/11/prod.list \
    > /etc/apt/sources.list.d/mssql-release.list && \
    apt-get update && ACCEPT_EULA=Y apt-get install -y msodbcsql18

RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt