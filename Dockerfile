# FROM nginx:alpine
# WORKDIR /usr/share/nginx/html
# RUN rm -rf ./*
# RUN export HOSTNAME=$(hostname)
# COPY ./app/index.html .
# EXPOSE 80
FROM nginx:alpine
RUN echo '#!/bin/sh\n\
echo "<html><body><h1>Host: \$(hostname)</h1><p>\$(date)</p></body></html>" \
> /usr/share/nginx/html/index.html' > /docker-entrypoint.d/00-hostname.sh \
&& chmod +x /docker-entrypoint.d/00-hostname.sh