FROM easypi/alpine-arm

RUN apk update \
 && apk add python3 \
 && pip3 install python-telegram-bot
RUN apk add tzdata \
 && cp /usr/share/zoneinfo/Asia/Singapore /etc/localtime \
 && echo "Asia/Singapore" > /etc/timezone

RUN mkdir /soyaya_bot
WORKDIR /soyaya_bot
COPY ./soyaya/* ./soyaya/

CMD python3 soyaya
