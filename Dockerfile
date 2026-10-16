#Основа для образа
FROM ubuntu:22.04

#Установка зависимостей
RUN apt update
RUN apt install -y python3 python3-pip
RUN pip install Flask

#Копирование приложения в образ
COPY app.py /

#Конфигурация Flask
ENV FLASK_APP=app
EXPOSE 9000
CMD flask run --host 0.0.0.0 --port 9000
