docker run \
       -d \
       -p 80:80 \
       -p 443:443 \
       -v /etc/apache2/certs:/usr/local/apache2/certs \
       --link spring2885-backend:backend \
       spring2885-frontend
