FROM nginx:1.24.0-bullseye
RUN cat /etc/nginx/conf.d/default.conf
RUN unlink /etc/nginx/conf.d/default.conf || :
RUN mkdir -p /etc/nginx/sites-enabled/ || :
COPY  sites-available/ /etc/nginx/sites-available/
RUN ls /etc/nginx
RUN ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/conf.d/default.conf
