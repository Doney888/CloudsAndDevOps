FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl wget vim nano

ENV DB_PASSWORD=SuperSecret123!
ENV API_KEY=sk_live_abcdef1234567890

CMD ["sleep", "infinity"]
