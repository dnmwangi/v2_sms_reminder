FROM python:3.11.0b4-alpine3.16

RUN apk update

RUN apk add git

RUN git clone https://github.com/dnmwangi/v2_sms_reminder.git

WORKDIR /sms_reminder

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["gunicorn  --bind 0.0.0.0:5000 wsgi:app"]