docker run -it \
  -v /home/rcleveng/secure/application-prod.properties:/config/application-prod.properties \
  -e SPRING_PROFILES_ACTIVE=prod \
  --net=host \
  spring2885-backend
