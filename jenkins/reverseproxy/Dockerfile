FROM nginx:alpine

ENV NGINX_HOST localhost

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf.tmpl /etc/nginx/conf.d/default.conf.tmpl

CMD /bin/sh -c "sed --expression='s/\${NGINX_HOST}/${NGINX_HOST}/g' /etc/nginx/conf.d/default.conf.tmpl > /etc/nginx/conf.d/default.conf && nginx"
