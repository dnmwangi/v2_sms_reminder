FROM python:3.11.0b4-alpine3.16

RUN apk update

RUN apk add git

RUN git clone https://github.com/dnmwangi/v2_sms_reminder.git

WORKDIR /sms_reminder

RUN pip install -r requirements.txt

EXPOSE 5000

COPY ./start_service.sh /

RUN chmod +x /start_service.sh

ENTRYPOINT ["/start_service.sh"]