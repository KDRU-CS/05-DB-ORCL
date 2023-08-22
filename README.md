# 05-DB-ORCL
# Installing Oracle database Free on docker and connecting to Azure Data Studio

pull image from docker hub
> docker pull container-registry.oracle.com/database/free:latest

run the image with configurations
> docker run -d --name <oracle-instance-name> -p 1521:1521 -e ORACLE_PWD=<oracle password> container-registry.oracle.com/database/free:latest

connect with azure data studio
Data Source: localhost
User Id: system
Password: <oracle password>
