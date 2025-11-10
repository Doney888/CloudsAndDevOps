FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3 python3-pip curl wget vim nano

# ОБХОДИМ БЛОКИРОВКУ PIP (плохая практика!)
RUN pip3 install --break-system-packages flask mysql-connector-python requests pandas numpy

COPY . /app

WORKDIR /app

ENV DB_HOST=localhost
ENV DB_PORT=3306
ENV DB_NAME=myapp
ENV DB_USER=admin
ENV DB_PASSWORD=SuperSecret123!
ENV API_KEY=sk_live_abcdef1234567890

EXPOSE 5000

CMD ["python3", "app.py"]
