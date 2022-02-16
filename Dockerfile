FROM python:3.6

RUN python -m pip install rasa

WORKDIR /app
COPY . .

RUN docker run -p 8000:8000 rasa/duckling
RUN rasa train

USER 1001

ENTRYPOINT [ "rasa" ]

CMD [ "run", "--enable-api", "--port", "8080"]

