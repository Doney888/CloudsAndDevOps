FROM alpine:latest

RUN apk add --no-cache curl

ENV DB_PASSWORD=""
ENV API_KEY=""

CMD ["sleep", "infinity"]
