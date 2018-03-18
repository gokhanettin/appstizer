FROM alpine:latest

RUN apk --no-cache add python \
    py-pip \
    python-dev \
    build-base \
    zlib-dev \
    jpeg-dev \
    linux-headers

VOLUME ["/data"]

ADD . /app/

WORKDIR /app

RUN pip install -r requirements.txt \
    && python manage.py collectstatic --noinput --ignore /data/ \
    && chmod +x /app/start.sh


EXPOSE 80

CMD ["/app/start.sh"]
