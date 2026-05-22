FROM python:3.12-slim-bookworm

WORKDIR /app
RUN apt update && apt install -y git

COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt