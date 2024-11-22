FROM debian

WORKDIR /app

RUN apt update && apt install -y iputils-ping curl vim

COPY . /app

CMD ["bash", "-c", "bash start.sh && tail -f /dev/null"]