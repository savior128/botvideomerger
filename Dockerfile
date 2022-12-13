FROM python:3.8.2-slim-buster

RUN apt -qq update && apt -qq install -y git ffmpeg
COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt

