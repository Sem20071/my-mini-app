# FROM nginx:alpine
# WORKDIR /usr/share/nginx/html
# RUN rm -rf ./*
# COPY ./app/index.html .
# EXPOSE 80
FROM nginx:alpine

# Устанавливаем рабочую директорию
WORKDIR /usr/share/nginx/html

# Удаляем стандартные файлы
RUN rm -rf ./*

# Копируем скрипт запуска
COPY ./app/entrypoint.sh /docker-entrypoint.d/
RUN chmod +x /docker-entrypoint.d/entrypoint.sh

EXPOSE 80