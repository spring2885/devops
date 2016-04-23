docker run \
       -d \
       -p 80:80 \
       -p 443:443 \
       -v /secure/certs:/usr/local/apache2/certs \
       --link spring2885-backend:backend \
       --name spring2885-frontend \
       us.gcr.io/spring2885-cloud/spring2885-frontend
