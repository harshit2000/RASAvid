FROM python:3.6


ADD ./environment.yml .

RUN python -m pip install rasa

WORKDIR /app
COPY . .

RUN rasa train

USER 1001

ENTRYPOINT [ "rasa" ]

CMD [ "run", "--enable-api", "--port", "8080"]

