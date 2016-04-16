#       -v /etc/apache2/certs:/usr/local/apache2/certs \

docker run \
       -it --rm \
       -p 80:80 \
       -p 443:443 \
       --link spring2885-backend:backend \
       -v /home/rcleveng/secure/certs:/usr/local/apache2/certs \
       spring2885-frontend
