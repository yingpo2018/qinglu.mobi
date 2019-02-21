FROM nginx

#RUN echo “Hello Nginx on Docker” > /usr/share/nginx/html/index.html

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 443 80

CMD nginx
