docker run \
       -d \
       -p 80:80 \
       -p 443:443 \
       -v /home/rcleveng/secure/certs:/usr/local/apache2/certs \
       --link spring2885-backend:backend \
       --name spring2885-frontend \
       spring2885-frontend
