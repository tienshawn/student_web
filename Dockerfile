FROM nginx:1.22.0-alpine

COPY ./nginx/app.conf /etc/nginx/conf.d/app.conf

COPY ./templates/index.html /var/www/frontend/index.html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]