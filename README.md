# Web-Db-Docker
WebApp to update/insert records into MySQL database. The app and the db containers are created here.

# Container - Application

The app container runs a python image and a requirements.txt to download the dependencies. The python file contains mysql.connector package to connect to the database. 
Since both app and db are part of the same docker compose file, connection to db from app can be done by "host: db_name". Bothe the services are connected to a custom-defined bridge network.

# Container - Database

The database container Dockerfile contains the MySQL image and init commands to create database and grant privileges to root user.

Run the command 
```docker
docker compose up -d 
```

to run the compose file and creates the services described. Connection to app and db is established and entries are added/updated. The default bridge network can also be used. In case, the services are running in seperate containers on the same host, it is beneficial to create custom defined network in bridge driver mode. Other used docker commands are as below:

```docker
docker network inspect mywebapp_network1
docker network connect <network> <container>
docker ps --all
docker container inspect <containerID>
```



