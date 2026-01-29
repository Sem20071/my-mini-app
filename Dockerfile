FROM nginx:alpine
# Устанавливаю рабочую директорию
WORKDIR /usr/share/nginx/html
# Удаляю стандартные файлы
RUN rm -rf ./*
# Копирую скрипт запуска
COPY ./app/entrypoint.sh /docker-entrypoint.d/
RUN chmod +x /docker-entrypoint.d/entrypoint.sh
EXPOSE 80