# Welcome to RASA Chatbot

# Rasa Chatbot

This is a task assigned to me. Here is the step by step process. The project is deployed using Docker container. Kindly find the file `Dockerfile` in the repo

## Environment details

The environment used is Python 3.6 for increasing the stability of the build. Conda package manager is used to create and deploy the environment. Kindly see the environment.yml file for the same

## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install rasa

```
pip install rasa

```

## Docker

```jsx
docker pull harshit2000/rasa-chatbot-covid:latest
```

## Challenges

The major challenge was to use the date extraction for the date. For that I used Duckling and created the server using the pipeline in rasa which can extract the dates and call the API to fetch the COVID stats.

The slots storage is also used to store the extracted entities. 

## License

[MIT](https://choosealicense.com/licenses/mit/)