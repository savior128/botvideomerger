FROM python:3.8-slim-buster
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

RUN apt -qq update && apt -qq install -y git ffmpeg
COPY . .

CMD python3 main.py
