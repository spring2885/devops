# Instructions for building.

The docker subdirectory contains the source of the
various docker containers used by the Spring2885 project.

## Installing Docker.

Visit https://docs.docker.com/engine/installation/ for instructions
on how to install docker for your machine.  Once installed
you can use the shell scripts to build and run your containers.

### Containers:
* frontend - contains the Apache2 server and the frontend code.
* backend - contains the backend server.

MySQL is expected to be installed on your local machine.

## Configuring MySQL

MySQL needs to listen on port 0.0.0.0 and not just 127.0.0.1
since the docker container needs to listen to it on the non
loopback IP address.  run.sh sets up the mapping from the
mysql dns entry inside the container to the local IP address.

To update MySQL, typically you edit the /etc/mysql/my.cnf file
and change this:

```
bind-address	= 127.0.0.1
```

to:

```
bind-address	= 0.0.0.0
```

## Make sure your respository is setup with the submodules.


Make sure you have the frontend repos as a submodule.
Run Once:
```
cd frontend
git submodule init
git submodule update
```

Afterwards you only have to do:
```
cd frontend
git submodule update
```

## Running the docker images

For development, just build and then run the docker images
once your MySQL is up and running.

Example:
```
pushd backend
./build.sh && ./run.sh
popd

pushd frontend
./build.sh && ./run.sh
popd
```

You'll see 2 SHA hashes displayed on the screen, those are your
container IDs. You can use them to attach to or display the logs
of your running containers.
